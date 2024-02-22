class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :exercises
  has_many :workouts
  has_many :rep_sets

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
