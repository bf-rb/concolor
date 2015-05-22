# frozen_string_literal: true

RSpec.describe Concolor do
  it 'String included extension' do
    expect(String.included_modules).to include(Concolor::Extension)
  end
end
