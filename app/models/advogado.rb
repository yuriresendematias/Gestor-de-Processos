class Advogado < ApplicationRecord
  has_many :advogado_processos
  has_many :processos, through: :advogado_processos

end
