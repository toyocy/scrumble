# == Schema Information
#
# Table name: organizations
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  def setup
    @org = organizations(:one)
  end

  test 'should be valid' do
    assert @org.valid?
  end

  test 'organization name should be present' do
    @org.name = '   '
    assert_not @org.valid?
  end
end
