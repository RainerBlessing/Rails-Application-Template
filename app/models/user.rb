class User < ActiveRecord::Base
  def before_connect(facebook_session)
    self.name = facebook_session.user.name
  end
end
