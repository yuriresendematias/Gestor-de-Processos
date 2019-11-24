class Advogado < ApplicationRecord
  belongs_to :user
  has_many :processos

  validates :nome, presence: true, length: { minimum: 3 }
  validates :n_OAB, presence: true, length: { is: 6 }
end
