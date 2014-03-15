class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :text
      t.integer :vote_count, :default => 0
      t.belongs_to :user
      t.timestamps
    end
  end
end
