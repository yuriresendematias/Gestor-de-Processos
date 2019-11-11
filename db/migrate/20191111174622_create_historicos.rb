class CreateHistoricos < ActiveRecord::Migration[5.1]
  def change
    create_table :historicos do |t|
      t.string :descricao
      t.references :processo, foreign_key: true

      t.timestamps
    end
  end
end
