class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pendings
  has_many :todos, through: :pendings
  after_create :load_pending
  private

  def load_pending
    Todo.all.each do |todo|
      Pending.create(todo: todo, user: self)
    end
  end
end
