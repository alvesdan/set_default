require 'active_support/concern'

module SetDefault
  module InstanceMethods
    extend ActiveSupport::Concern

    included do
      after_initialize :set_default_column_values
    end

    def set_default_column_values
      self.class.columns_to_set.each do |item|
        value = item.value.kind_of?(Proc) ? item.value.call(self) : item.value
        write_attribute(item.column, value)
      end
    end

  end
end
