require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @usual_task = tasks(:usual_task)
    @allday_task = tasks(:allday_task)
  end

  test 'should be valid' do
    assert @usual_task.valid?
    assert @allday_task.valid?
  end

  test 'task name should be present' do
    @usual_task.name = '   '
    assert_not @usual_task.valid?
  end

  test 'task name should not be too long' do
    @usual_task.name = 'A' * 51
    assert_not @usual_task.valid?
  end

  test 'finished datetime should not before started datetime' do
    now = DateTime.now
    before_time = now.prev_day(2)
    @usual_task.started_at = now
    @usual_task.finished_at = before_time
  end
end
