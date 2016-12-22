class CreateImage < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :imagename;
      t.text :category;
      t.datetime :created_at;
      t.datetime :updated_at;
    end
  end
end
