class Historico < ApplicationRecord
  belongs_to :processo
  validates :descricao, presence: true, length: { minimum: 5 }
end
