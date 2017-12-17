class Todo < ApplicationRecord
  has_many :pendings
  has_many :users, through: :pendings
end
