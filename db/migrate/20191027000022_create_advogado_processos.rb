class CreateAdvogadoProcessos < ActiveRecord::Migration[5.1]
  def change
    create_table :advogado_processos do |t|
      t.boolean :principal
      t.references :advogado, :processo
      t.timestamps
    end
  end

  def self.down
    drop_table :advogado_processos
  end
end
