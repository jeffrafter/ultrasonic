require 'stringex'

class User < ActiveRecord::Base
  include Clearance::User
  before_validation :urlify
  attr_accessible :username    
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_uniqueness_of :url

  def urlify
    self.url = self.username.to_s.to_url
  end

  def to_param
    url
  end
  
  def self.authenticate(email, password)
    user = find(:first, :conditions => ['LOWER(username) = ? OR LOWER(email) = ?', email.to_s.downcase, email.to_s.downcase])
    user && user.authenticated?(password) ? user : nil
  end
  
  def self.find_by_id(id)
    self.find_by_url(id)
  end
  
  def self.find_by_id_and_confirmation_token(id, token)
    self.find_by_url_and_confirmation_token(id, token)
  end
end
