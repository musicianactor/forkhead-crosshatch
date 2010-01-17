require 'test_helper'

class ComicsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Comic.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Comic.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Comic.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to comic_url(assigns(:comic))
  end
  
  def test_edit
    get :edit, :id => Comic.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Comic.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Comic.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Comic.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Comic.first
    assert_redirected_to comic_url(assigns(:comic))
  end
  
  def test_destroy
    comic = Comic.first
    delete :destroy, :id => comic
    assert_redirected_to comics_url
    assert !Comic.exists?(comic.id)
  end
end
