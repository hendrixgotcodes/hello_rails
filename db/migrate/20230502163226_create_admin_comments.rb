class CreateAdminComments < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_comments do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
