require 'test_helper'

class PanelsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Panel.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Panel.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Panel.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to panel_url(assigns(:panel))
  end
  
  def test_edit
    get :edit, :id => Panel.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Panel.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Panel.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Panel.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Panel.first
    assert_redirected_to panel_url(assigns(:panel))
  end
  
  def test_destroy
    panel = Panel.first
    delete :destroy, :id => panel
    assert_redirected_to panels_url
    assert !Panel.exists?(panel.id)
  end
end
