require 'rails_helper'

describe Task do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
