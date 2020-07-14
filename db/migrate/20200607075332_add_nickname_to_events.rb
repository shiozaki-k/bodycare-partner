class AddNicknameToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :nickname, :string
  end
end
