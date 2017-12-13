require 'test_helper'

class BizContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get biz_contacts_index_url
    assert_response :success
  end

end
