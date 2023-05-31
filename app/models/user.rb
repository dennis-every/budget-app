class User < ApplicationRecord
  has_many :expenses, dependent: :destroy, foreign_key: :author_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true

  protected

  def password_required?
    false
  end
end
