class CreateAdvogados < ActiveRecord::Migration[5.1]
  def change
    create_table :advogados do |t|
      t.string :nome
      t.string :n_OAB
      t.references :user, foreing_key: true

      t.timestamps null: false
    end
  end
end
