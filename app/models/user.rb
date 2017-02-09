class User < ActiveRecord::Base
  acts_as_authentic do |u|
    u.login_field = :email
  end
end
