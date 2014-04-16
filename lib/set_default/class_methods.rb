module SetDefault
  module ClassMethods

    @@columns_to_set = []
    class ColumnSet < Struct.new(:column, :value); end;

    def set_default_to(column, default = nil)
      value = block_given? ? yield : default
      add_defalut_column_to_set(column, value)
    end

    def add_defalut_column_to_set(column, value = nil, &block)
      @@columns_to_set << ColumnSet.new(column, value || block)
    end

    def columns_to_set
      @@columns_to_set
    end

  end
end
