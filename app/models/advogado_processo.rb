class AdvogadoProcesso < ApplicationRecord
  belongs_to :processo
  belongs_to :advogado
end
