require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  
  test "validate presence of" do
    a = Address.new
    assert !a.valid?
    assert a.errors.on(:street)
    assert a.errors.on(:number)
    assert a.errors.on(:neighborhood)
    assert a.errors.on(:zip_code)
    assert a.errors.on(:city)
    assert a.errors.on(:country_state)
  end
  
  test "validates numericality of" do
    a = Address.new(:number => "letter")
    assert !a.save && a.errors.on(:number)
    
    a.number = 1.0
    assert !a.save && a.errors.on(:number)
    
    a.number = 22
    assert !a.save && !a.errors.on(:number)
  end
  
  test "save" do 
    a = Address.new(:street => "Rua", :number => 100, :neighborhood => "Bairro", 
                    :zip_code => "95670-000", :city => "Porto Alegre", :country_state => "RS")
    assert a.save
  end

end
