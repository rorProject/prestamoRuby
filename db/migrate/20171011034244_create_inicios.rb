class CreateInicios < ActiveRecord::Migration[5.1]
  def change
    create_table :inicios do |t|

      t.timestamps
    end
  end
end
