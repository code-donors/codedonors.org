class User < ActiveRecord::Base

  enum subscriber_type: [ :developer, :ong ]

end
