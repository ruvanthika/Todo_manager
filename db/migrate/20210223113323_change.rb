class Change < ActiveRecord::Migration[6.1]
  def change
    create_table "todos", force: :cascade do |t|
      t.text "todo_text"
      t.date "due_date"
      t.boolean "completed"
      t.bigint "user_id"
      t.timestamps
    end

    create_table "users", force: :cascade do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "password_digest"
      t.timestamps
    end
  end
end
