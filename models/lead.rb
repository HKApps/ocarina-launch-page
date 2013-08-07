class Lead < ActiveRecord::Base
  validate :email, presence: true

end
