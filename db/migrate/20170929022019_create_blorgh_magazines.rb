class CreateBlorghMagazines < ActiveRecord::Migration[5.1]
  def change
    create_table :blorgh_magazines do |t|
      t.string :title

      t.timestamps
    end
  end
end
