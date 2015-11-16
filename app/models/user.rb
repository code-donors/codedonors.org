class User < ActiveRecord::Base

  enum type: [ :developer, :ong ]

end
