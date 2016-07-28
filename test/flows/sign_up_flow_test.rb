require 'flow_test_helper'

class SignUpFlowTest < FlowTestCase
  test 'sign up' do
    visit(new_user_path)
    fill_in('user[name]', with: 'asdasdas')
    fill_in('user[email]', with: 'asdasdas@google.com')
    fill_in('user[password]', with: 'asdasdas')
    fill_in('user[password_confirmation]', with: 'asdasdas')
    find('input[type="submit"]').click
    assert has_current_path?(user_path(User.last)), "Does not have #{user_path(User.last)}"
  end
end
