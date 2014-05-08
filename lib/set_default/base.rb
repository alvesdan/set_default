require 'active_support/concern'

module SetDefault
  class ColumnSet < Struct.new(:column, :value); end;

  module Base
    extend ActiveSupport::Concern

    included do
      class_attribute :_columns_to_set
      self._columns_to_set = {}
      after_initialize :set_default_column_values
    end

    def set_default_column_values
      self.class._columns_to_set[self.class.name].each do |item|
        value = item.value.kind_of?(Proc) ? item.value.call(self) : item.value
        write_attribute(item.column, value) unless read_attribute(item.column)
      end
    end

    module ClassMethods
      def set_default_to(column, default = nil)
        value = block_given? ? yield : default
        add_defalut_column_to_set(column, value)
      end

      def add_defalut_column_to_set(column, value = nil, &block)
        self._columns_to_set[self.name] ||= []
        self._columns_to_set[self.name] << SetDefault::ColumnSet.new(column, value || block)
      end
    end

  end
end
