require 'test_helper'

class OriginalImagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    OriginalImage.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    OriginalImage.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to original_images_url
  end
  
  def test_edit
    get :edit, :id => OriginalImage.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    OriginalImage.any_instance.stubs(:valid?).returns(false)
    put :update, :id => OriginalImage.first
    assert_template 'edit'
  end
  
  def test_update_valid
    OriginalImage.any_instance.stubs(:valid?).returns(true)
    put :update, :id => OriginalImage.first
    assert_redirected_to original_images_url
  end
end
