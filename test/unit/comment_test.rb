require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "rate should be greater than or equal to 1" do
    comment = Comment.new :rate => 0
    assert !comment.valid? && comment.errors.on(:rate)
    
    comment = Comment.new :rate => 1
    comment.valid?
    assert !comment.errors.on(:rate)
  end
  
  test "rate should be lesser than or equal to 5" do
    comment = Comment.new :rate => 6
    assert !comment.valid? && comment.errors.on(:rate)
    
    comment = Comment.new :rate => 5
    comment.valid?
    assert !comment.errors.on(:rate)
  end
  
  test "resume should be returned" do
    comment = Comment.find comments(:with_resume).id
    assert_equal comment.resume_or_message, comment.resume
  end

  test "message should be returned" do
    comment = Comment.find comments(:without_resume).id
    assert_equal comment.resume_or_message, comment.message
  end
  
  test "should be validate presence of" do
    comment = Comment.new
    assert !comment.save
    assert comment.errors.invalid?(:name)
    assert comment.errors.invalid?(:email)
    assert comment.errors.invalid?(:message)
    assert comment.errors.invalid?(:rate)
  end

  test "product comment should be validate presence of" do
    comment = ProductComment.new
    assert !comment.save
    assert comment.errors.invalid?(:name)
    assert comment.errors.invalid?(:email)
    assert comment.errors.invalid?(:message)
    assert comment.errors.invalid?(:rate)
    assert comment.errors.invalid?(:user)
    assert comment.errors.invalid?(:product)
  end
  
  test "product comment should set name and email" do
    user = User.find users(:default).id
    product = Product.find products(:default).id
    
    assert_not_nil user.email
    assert_not_nil user.client.name
    
    comment = ProductComment.new(:message => "value", :rate => 1, :user => user, :product => product)
    assert comment.save, comment.errors.full_messages 
    assert_equal user.email, comment.email
    assert_equal user.client.name, comment.name
  end
end
