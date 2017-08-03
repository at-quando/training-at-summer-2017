# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  user_name          :string
#  email              :string
#  password_digest    :string
#  name               :string
#  gender             :integer
#  birthday           :datetime
#  role               :integer          default(0)
#  avatar             :string
#  provider           :string
#  uid                :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  email_confirmed    :boolean          default(FALSE)
#  confirm_token      :string
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
class User < ApplicationRecord
  enum gender: %w[male female gay less other]
  has_secure_password
  has_attached_file :image, styles: { medium: '640x', small: '40x' }
  validates :image, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :user_name, :email, uniqueness: true
  validates :user_name, presence: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :email, presence: true, if: proc { provider == 'email' }
  validates :name, length: { in: 6..30 }
  # length: { minimum:6, maximum:30 } , allow_blank: true
  validate :birthday_validate
  # validates :uid, uniqueness: { scope: :provider }

  has_many :my_carts, class_name: 'Cart' # Cart is class name, name of model
  has_one :cart
  has_many :orders, through: :my_carts
  has_many :books, through: :orders
  has_many :comments, through: :books

  def birthday_validate
    errors.add(:birthday, 'more than 16 years old') if birthday.present? && Time.now - 16.years < birthday
  end

  def validate_email
    self.email_confirmed = true
    self.confirm_token = nil
  end

  def set_confirmation_token
    self.confirm_token = SecureRandom.urlsafe_base64.to_s if confirm_token.blank?
  end
end
