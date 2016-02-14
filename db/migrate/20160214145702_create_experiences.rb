class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.attachment :image

      t.timestamps
    end
  end
end
