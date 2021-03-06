# frozen_string_literal: true
class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          # :confirmable, :omniauthable, :trackable
  include DeviseTokenAuth::Concerns::User
end
