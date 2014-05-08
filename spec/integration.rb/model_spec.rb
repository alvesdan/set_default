require 'spec_helper'

class Person < ActiveRecord::Base
  set_default_to :age, 10
  set_default_to :name, "John"
  set_default_to :days, -> (person) { person.age * 365 }
end

class Category < ActiveRecord::Base
  set_default_to :slug, -> (category) { category.name.try(:parameterize) }
end

describe Person do
  it 'should set default value' do
    example = Person.new
    expect(example.age).to eq 10
    expect(example.name).to eq "John"
    expect(example.days).to eq 3650
  end

  it 'should keep value when defined on initialize' do
    example = Person.new(name: "Jack")
    expect(example.name).to eq "Jack"
  end
end

describe Category do
  it 'should set default value' do
    example = Category.new(name: "New Category")
    expect(example.slug).to eq "new-category"
  end

  it 'should keep value when defined on initialize' do
    example = Category.new(name: "Other Category", slug: "my-slug")
    expect(example.slug).to eq "my-slug"
  end
end
