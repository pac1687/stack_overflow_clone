class FixQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :question, :string
    rename_column :questions, :text, :content
  end
end
