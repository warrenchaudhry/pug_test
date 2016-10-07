class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  authenticates_with_sorcery!
  validates :first_name, :last_name, :email, :country, :language, :age, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, :password_confirmation, presence: true, on: :create
  validates :password, length: { minimum: 8 }, allow_blank: true
  validates :password, confirmation: true, allow_blank: true
  validates_numericality_of :age, greater_than: 0, allow_blank: true

  def name
    "#{first_name} #{last_name}"
  end

  def role
    if is_admin?
      'admin'
    elsif is_paying?
      'paying'
    else
      'free'
    end
  end
end
