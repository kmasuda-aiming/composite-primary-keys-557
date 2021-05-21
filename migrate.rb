require 'active_record'

configs = YAML.load(File.read('./config/database.yml'))

ActiveRecord::Tasks::DatabaseTasks.create(configs['development'])

ActiveRecord::Base.configurations = configs

ActiveRecord::Base.establish_connection(:development)

class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    unless ActiveRecord::Base.connection.table_exists?(:memberships)
      create_table :memberships, primary_key: ["user_id", "group_id"] do |t|
        t.integer "user_id", null: false
        t.integer "group_id", null: false
      end
    end
  end
end

CreateUserTable.migrate(:up)
