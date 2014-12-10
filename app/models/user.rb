class User < ActiveRecord::Base
	belongs_to :company
	has_many :works
	has_many :projects, :through => :works

	valideates: :fname, length: { minimum: 2}
	valideates: :lname, length: { minimum: 5}
	valideates: :company, presence: true 

end

