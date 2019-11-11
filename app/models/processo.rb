class Processo < ApplicationRecord
  has_many :historicos

  def self.search (query)
    where("num_processo like ?", "%#{query}%")
  end
end
