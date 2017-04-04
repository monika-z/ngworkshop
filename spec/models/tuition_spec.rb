require 'rails_helper'

RSpec.describe Tuition do
  describe 'validations' do
    it { is_expected.to validate_presence_of :deadline }
  end

  describe 'database columns' do
    it { should have_db_column :deadline }
  end

  describe 'associations' do
    it { is_expected.to have_many :students }
    it { is_expected.to have_many :payments }
  end
end
