module Maglev
  module Base
     #include ActiveModel::MassAssignmentSecurity
    # include ActiveModel::Validations
    # include ActiveRecord::Associations
    # include ActiveRecord::Reflection

    # puts "USEFUL INFORMATIONS"
    # puts Maglev::PERSISTENT_ROOT
    # puts self
    # Maglev::PERSISTENT_ROOT[self] ||= Hash.new
    # puts Maglev::PERSISTENT_ROOT
    module ClassMethods
      
      def find(id)
        Maglev::PERSISTENT_ROOT[self][id]
      end

      def all
        Maglev::PERSISTENT_ROOT[self].values
      end

      def create(*args)
        x = new(*args)
        x
      end

      # def attr_accessible(*args)
      # end

      def validates(*args)
      end

    end

    def self.included(host)
      # TODO: Almost certainly not a good thing beyond the dev env: This will
      # blow away any persistent data from previous runs.  Perhaps we need a
      # migration idiom so that this can be controlled.
      Maglev::PERSISTENT_ROOT[host] = Hash.new
      host.extend ClassMethods
      host.extend Enumerable
    end
  end
end