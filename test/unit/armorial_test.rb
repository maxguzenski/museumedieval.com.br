require 'test_helper'

class ArmorialTest < ActiveSupport::TestCase

  test "should validate presence of" do
    armorial = Armorial.new
    assert !armorial.valid?
    assert(armorial.errors.invalid?(:name), "Nome deveria ser obrigatorio")
    assert(armorial.errors.invalid?(:line), "Linhagem deveria ser obrigatorio")
  end
  
  test "name should be unique" do
    armorial = Armorial.new :name => "Lusitano", :line => "Portuguesa"
    assert armorial.save
    
    armorial = Armorial.new :name => "Lusitano", :line => "Espanhola"
    assert !armorial.save
    assert armorial.errors.invalid?(:name)
  end
end
