require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    post book_borrowings_path(books(:one))
    assert_response :redirect
  end

  test "should get destroy" do
    delete borrowing_path(borrowings(:one))
    assert_response :redirect
  end
end
