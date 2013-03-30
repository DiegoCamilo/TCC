require 'test_helper'

class MapeamentosControllerTest < ActionController::TestCase
  setup do
    @mapeamento = mapeamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mapeamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mapeamento" do
    assert_difference('Mapeamento.count') do
      post :create, mapeamento: { data_semestre: @mapeamento.data_semestre, periodo_turma: @mapeamento.periodo_turma, turno: @mapeamento.turno }
    end

    assert_redirected_to mapeamento_path(assigns(:mapeamento))
  end

  test "should show mapeamento" do
    get :show, id: @mapeamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mapeamento
    assert_response :success
  end

  test "should update mapeamento" do
    put :update, id: @mapeamento, mapeamento: { data_semestre: @mapeamento.data_semestre, periodo_turma: @mapeamento.periodo_turma, turno: @mapeamento.turno }
    assert_redirected_to mapeamento_path(assigns(:mapeamento))
  end

  test "should destroy mapeamento" do
    assert_difference('Mapeamento.count', -1) do
      delete :destroy, id: @mapeamento
    end

    assert_redirected_to mapeamentos_path
  end
end
