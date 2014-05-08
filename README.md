# set_default

Just an experiment to allow you do this:

    class Person < ActiveRecord::Base
      set_default_to :age, 10
      set_default_to :name, "John"
      set_default_to :days, -> (person) { person.age * 365 }
    end

    class Category < ActiveRecord::Base
      set_default_to :slug, -> (category) { category.name.try(:parameterize) }
    end
