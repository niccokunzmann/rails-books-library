
module MaglevRecord
  module Persistence
    extend ActiveSupport::Concern

    module InstanceMethods
      def persisted?
        false
      end
    end
  end
end

