require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Issue.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Issue.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Issue.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to issue_url(assigns(:issue))
  end
  
  def test_edit
    get :edit, :id => Issue.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Issue.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Issue.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Issue.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Issue.first
    assert_redirected_to issue_url(assigns(:issue))
  end
  
  def test_destroy
    issue = Issue.first
    delete :destroy, :id => issue
    assert_redirected_to issues_url
    assert !Issue.exists?(issue.id)
  end
end
