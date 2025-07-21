class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blogs
  has_many :comments, dependent: :destroy
  has_one_attached :avatar

  extend FriendlyId
  friendly_id :user_name, use: :slugged

  validate :avatar_type

  def admin?
    role=="admin"
  end


  def self.ransackable_attributes(auth_object = nil)
    [ "user_name" ]
  end

  private

  def avatar_type
    if avatar.attached? && !avatar.content_type.in?(%w[image/png image/jpg image/jpeg])
      errors.add(:avatar, "must be a PNG or JPG")
    end
  end

end
