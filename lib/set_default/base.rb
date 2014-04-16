require 'active_support/concern'

module SetDefault
  module Base

    def set_default_to(column, default)
      class_eval %{
        after_initialize :set_default_to_#{column}
        def set_default_to_#{column}
          self.#{column} ||= #{default.kind_of?(Numeric) ? "#{default}" : "'#{default}'"}
        end
      }
    end

  end
end
