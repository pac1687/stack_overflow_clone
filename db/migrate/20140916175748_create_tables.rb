class CreateTables < ActiveRecord::Migration
  def change

    create_table :questions do |t|
      t.column :text, :string
      t.column :user_id, :integer
      t.column :chosen_answer_id, :integer
      t.timestamps
    end

    create_table :answers do |t|
      t.column :text, :string
      t.column :question_id, :integer
      t.column :user_id, :integer
      t.timestamps
    end

    create_table :votes do |t|
      t.column :user_id, :integer
      t.column :answer_id, :integer
      t.timestamps
    end

    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :password_digest, :string
      t.timestamps
    end
  end
end
