require 'set_default/version'
require 'set_default/base'

ActiveRecord::Base.send(:include, SetDefault::Base)
