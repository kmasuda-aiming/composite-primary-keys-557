require 'active_record'
require 'composite_primary_keys'

ActiveRecord::Base.logger = Logger.new(STDOUT)

configs = YAML.load(File.read('./config/database.yml'))

ActiveRecord::Base.configurations = configs

class Membership < ActiveRecord::Base
  self.primary_keys = :user_id, :group_id
  establish_connection :development
end

Membership.delete_all
