require 'test_helper'

class SystemicExamsControllerTest < ActionController::TestCase
  setup do
    @systemic_exam = systemic_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:systemic_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create systemic_exam" do
    assert_difference('SystemicExam.count') do
      post :create, systemic_exam: { CardioVascularSystem_id: @systemic_exam.CardioVascularSystem_id, ENT_id: @systemic_exam.ENT_id, Eye_id: @systemic_exam.Eye_id, GastroIntestinalSystem_id: @systemic_exam.GastroIntestinalSystem_id, GenitoUrinalSystem_id: @systemic_exam.GenitoUrinalSystem_id, MusculoSkeletalSystem_id: @systemic_exam.MusculoSkeletalSystem_id, NervousSystem_id: @systemic_exam.NervousSystem_id, RespiratorySystem_id: @systemic_exam.RespiratorySystem_id, Skin_id: @systemic_exam.Skin_id }
    end

    assert_redirected_to systemic_exam_path(assigns(:systemic_exam))
  end

  test "should show systemic_exam" do
    get :show, id: @systemic_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @systemic_exam
    assert_response :success
  end

  test "should update systemic_exam" do
    patch :update, id: @systemic_exam, systemic_exam: { CardioVascularSystem_id: @systemic_exam.CardioVascularSystem_id, ENT_id: @systemic_exam.ENT_id, Eye_id: @systemic_exam.Eye_id, GastroIntestinalSystem_id: @systemic_exam.GastroIntestinalSystem_id, GenitoUrinalSystem_id: @systemic_exam.GenitoUrinalSystem_id, MusculoSkeletalSystem_id: @systemic_exam.MusculoSkeletalSystem_id, NervousSystem_id: @systemic_exam.NervousSystem_id, RespiratorySystem_id: @systemic_exam.RespiratorySystem_id, Skin_id: @systemic_exam.Skin_id }
    assert_redirected_to systemic_exam_path(assigns(:systemic_exam))
  end

  test "should destroy systemic_exam" do
    assert_difference('SystemicExam.count', -1) do
      delete :destroy, id: @systemic_exam
    end

    assert_redirected_to systemic_exams_path
  end
end
