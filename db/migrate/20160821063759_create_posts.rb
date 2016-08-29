class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string  :file_path,  default: ""
      t.string  :downloadcode

      t.timestamps null: false
    end
  end
end
