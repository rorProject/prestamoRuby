class CreateRubyonRails < ActiveRecord::Migration[5.1]
  def change
    create_table :rubyon_rails do |t|

      t.timestamps
    end
  end
end
