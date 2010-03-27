class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field :email
  end

  def before_connect(facebook_session)
    self.name = facebook_session.user.name
  end
end
