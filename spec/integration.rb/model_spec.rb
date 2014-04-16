require 'spec_helper'

class Person < ActiveRecord::Base
  set_default_to :age, 10
  set_default_to :name, "John"
  set_default_to :days, -> (person) { person.age * 365 }
end

describe Person do
  it 'should set default value' do
    example = Person.new
    expect(example.age).to eq 10
    expect(example.name).to eq "John"
    expect(example.days).to eq 3650
  end
end
