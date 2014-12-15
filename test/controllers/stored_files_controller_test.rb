require 'test_helper'

class StoredFilesControllerTest < ActionController::TestCase
  setup do
    @stored_file = stored_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stored_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stored_file" do
    assert_difference('StoredFile.count') do
      post :create, stored_file: { name: @stored_file.name, path: @stored_file.path, storage_id: @stored_file.storage_id, storage_type: @stored_file.storage_type }
    end

    assert_redirected_to stored_file_path(assigns(:stored_file))
  end

  test "should show stored_file" do
    get :show, id: @stored_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stored_file
    assert_response :success
  end

  test "should update stored_file" do
    patch :update, id: @stored_file, stored_file: { name: @stored_file.name, path: @stored_file.path, storage_id: @stored_file.storage_id, storage_type: @stored_file.storage_type }
    assert_redirected_to stored_file_path(assigns(:stored_file))
  end

  test "should destroy stored_file" do
    assert_difference('StoredFile.count', -1) do
      delete :destroy, id: @stored_file
    end

    assert_redirected_to stored_files_path
  end
end
