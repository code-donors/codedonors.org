class User < ActiveRecord::Base

  enum subscriber_type: [ :developer, :ong ]

  validates :email, presence: true
  validates :email, format: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i

end
