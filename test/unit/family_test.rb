require 'test_helper'

class FamilyTest < ActiveSupport::TestCase
  
  test "should validates presence of" do
    family = Family.new
    assert !family.save
    assert family.errors.invalid?(:name)
    assert family.errors.invalid?(:armorial)
  end
  
  test "should be unique when scoped by armorial" do
    family = Family.new(:name => 'on_name', :armorial_id => 1)
    assert !family.save
    assert family.errors.invalid?(:name)
    
    family = Family.create(:name => 'on_name', :armorial_id => 2)
    assert !family.errors.invalid?(:name)
  end
  
  test "should be titleized" do
    family = Family.new(:name => "gUzEnskI", :variatons => 'Guzinski, guzewski, GUZÉNSKI', :armorial => Armorial.new(:id => 1))
    assert family.save
    assert_equal "Guzenski", family.name
    assert_equal "Guzinski, Guzewski, Guzénski", family.variatons
  end

  test "should find on name" do
    family = Family.find_by_surname "on_name"
    assert_not_nil family
    assert_equal family.id, families(:on_name).id
  end
  
  test "sould find on variations" do
    family = Family.find_by_surname "on_variatons"
    assert_not_nil family
    assert_equal family.id, families(:on_variatons).id
  end

  test "should find on variatons init" do
    family = Family.find_by_surname "on_variatons_init"
    assert_not_nil family
    assert_equal family.id, families(:on_variatons_init).id
  end

  test "should find on variatons middle" do
    family = Family.find_by_surname "on_variatons_middle"
    assert_not_nil family
    assert_equal family.id, families(:on_variatons_middle).id
  end

  test "should find on variatons end" do
    family = Family.find_by_surname "on_variatons_end"
    assert_not_nil family
    assert_equal family.id, families(:on_variatons_end).id
  end

end
