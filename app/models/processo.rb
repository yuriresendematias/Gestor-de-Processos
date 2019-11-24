class Processo < ApplicationRecord
  has_many :historicos
  belongs_to :advogado

  validates :num_processo, presence: true
  validates :cliente, presence: true

  def self.search (query)
    where("num_processo like ?", "%#{query}%")
  end
end
