require 'test_helper'

class CountryStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_stat = country_stats(:one)
  end

  test "should get index" do
    get country_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_country_stat_url
    assert_response :success
  end

  test "should create country_stat" do
    assert_difference('CountryStat.count') do
      post country_stats_url, params: { country_stat: { GDP: @country_stat.GDP, birthrate: @country_stat.birthrate, healthexpenditurepercapita: @country_stat.healthexpenditurepercapita, healthexpenditureppercentGDP: @country_stat.healthexpenditureppercentGDP, lifeexpectancy: @country_stat.lifeexpectancy, mobilephones: @country_stat.mobilephones, mortalityunder5: @country_stat.mortalityunder5, name: @country_stat.name, population: @country_stat.population, populationurban: @country_stat.populationurban } }
    end

    assert_redirected_to country_stat_url(CountryStat.last)
  end

  test "should show country_stat" do
    get country_stat_url(@country_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_country_stat_url(@country_stat)
    assert_response :success
  end

  test "should update country_stat" do
    patch country_stat_url(@country_stat), params: { country_stat: { GDP: @country_stat.GDP, birthrate: @country_stat.birthrate, healthexpenditurepercapita: @country_stat.healthexpenditurepercapita, healthexpenditureppercentGDP: @country_stat.healthexpenditureppercentGDP, lifeexpectancy: @country_stat.lifeexpectancy, mobilephones: @country_stat.mobilephones, mortalityunder5: @country_stat.mortalityunder5, name: @country_stat.name, population: @country_stat.population, populationurban: @country_stat.populationurban } }
    assert_redirected_to country_stat_url(@country_stat)
  end

  test "should destroy country_stat" do
    assert_difference('CountryStat.count', -1) do
      delete country_stat_url(@country_stat)
    end

    assert_redirected_to country_stats_url
  end
end
