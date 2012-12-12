module Maglev
  module Base
    extend ActiveSupport::Concern

    included do
      include ActiveModel::MassAssignmentSecurity
      include ActiveModel::Validations

      Maglev::PERSISTENT_ROOT[self] ||= Hash.new
    end
    # include ActiveRecord::Associations
    # include ActiveRecord::Reflection

    module ClassMethods
      def find(id)
        Maglev::PERSISTENT_ROOT[self][id]
      end

      def all
        Maglev::PERSISTENT_ROOT[self].values
      end

      def create(*args)
        x = self.new(*args)
        x
      end
    end

  end
end