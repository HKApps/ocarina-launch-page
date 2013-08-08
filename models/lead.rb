require 'validates_email_format_of'

class Lead < ActiveRecord::Base
  validates_presence_of     :email
  validates_uniqueness_of   :email, message: "%{value} has already subscribed!"
  validates_email_format_of :email
end
