require 'test_helper'

class CountriesControllerTest < ActionController::TestCase
  setup do
    @country = countries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country" do
    assert_difference('Country.count') do
      post :create, country: { area: @country.area, calling_code: @country.calling_code, capital: @country.capital, currencies: @country.currencies, languages: @country.languages, name: @country.name, region: @country.region, sub_region: @country.sub_region, top_level_domain: @country.top_level_domain }
    end

    assert_redirected_to country_path(assigns(:country))
  end

  test "should show country" do
    get :show, id: @country
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @country
    assert_response :success
  end

  test "should update country" do
    patch :update, id: @country, country: { area: @country.area, calling_code: @country.calling_code, capital: @country.capital, currencies: @country.currencies, languages: @country.languages, name: @country.name, region: @country.region, sub_region: @country.sub_region, top_level_domain: @country.top_level_domain }
    assert_redirected_to country_path(assigns(:country))
  end

  test "should destroy country" do
    assert_difference('Country.count', -1) do
      delete :destroy, id: @country
    end

    assert_redirected_to countries_path
  end
end
