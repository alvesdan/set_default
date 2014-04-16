require 'active_record'
ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

ActiveRecord::Migration.create_table :people do |t|
  t.integer :age
  t.string :name
end
