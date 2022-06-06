class CreateBancodados < ActiveRecord::Migration[7.0]
  def change
    create_table :bancodados do |t|
      t.string :nome
      t.string :cpf
      t.string :nascimento
      t.string :genero
      t.string :rg
      t.string :entidade

      t.timestamps
    end
  end
end
