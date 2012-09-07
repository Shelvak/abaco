require 'test_helper'

class OperatorShiftsTest < ActiveSupport::TestCase

  test 'should get operator shifts between dates' do
    shifts =  OperatorShifts.find(:all, params: {
      pay_pending_shifts_for_user_between: {
        user_id: 1, start: 1.month.ago.to_date, finish: Date.today
      }
    })

    assert_equal @operator_shifts.size, shifts.size
  end
end
