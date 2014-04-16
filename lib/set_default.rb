require 'set_default/version'
require 'set_default/base'

module SetDefault
end

ActiveRecord::Base.send(:extend, SetDefault::Base)
