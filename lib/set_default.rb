require 'set_default/version'
require 'set_default/class_methods'
require 'set_default/instance_methods'

ActiveRecord::Base.send(:extend, SetDefault::ClassMethods)
ActiveRecord::Base.send(:include, SetDefault::InstanceMethods)
