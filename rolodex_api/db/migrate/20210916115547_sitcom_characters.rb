class SitcomCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :sitcom_characters do |t|
      t.text   :address
      t.text   :company
      t.string :name
      t.string :username
      t.string :email
      t.string :website
      t.string :phone

      t.timestamps
    end
  end
end
