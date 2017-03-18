class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.text :title
      t.text :description
      t.timestamps
    end
  end
end
