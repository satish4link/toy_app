class User < ApplicationRecord
	has_many :microposts
	validates :name, presence: true
	validates :email, presence: true
	validates :name, :length => { :minimum => 5 }
	validates :email, :uniqueness => { :message => "already exists"}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
