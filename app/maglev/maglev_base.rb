module Maglev
  module Base
    include ActiveModel::MassAssignmentSecurity
    include ActiveModel::Validations
    # include ActiveRecord::Associations
    # include ActiveRecord::Reflection

    puts "USEFUL INFORMATIONS"
    puts Maglev::PERSISTENT_ROOT
    puts self
    Maglev::PERSISTENT_ROOT[self] ||= Hash.new
    puts Maglev::PERSISTENT_ROOT

    def self.find(id)
      Maglev::PERSISTENT_ROOT[self][id]
    end

    def self.all
      Maglev::PERSISTENT_ROOT[self].values
    end

    def self.create(*args)
      x = self.new(*args)
      x
    end

  end
end