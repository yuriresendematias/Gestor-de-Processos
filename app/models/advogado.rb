class Advogado < ApplicationRecord
  validates :nome, presence: true, length:  {minimum: 4}
  validates :n_OAB, presence: true, length:  {is: 6}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
end
