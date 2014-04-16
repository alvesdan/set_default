require 'spec_helper'

class Person < ActiveRecord::Base
  set_default_to :age, 10
  set_default_to :name, "John"
end

describe Person do
  it 'should set default value' do
    example = Person.new
    expect(example.age).to eq 10
    expect(example.name).to eq "John"
  end
end
