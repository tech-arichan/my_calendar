require 'test_helper'

class OverallSchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get overall_schedules_index_url
    assert_response :success
  end

end
