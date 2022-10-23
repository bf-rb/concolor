# frozen_string_literal: true

RSpec.describe Concolor::Version do
  it 'MAJOR' do
    expect(Concolor::Version::MAJOR).to be(0)
  end

  it 'MINOR' do
    expect(Concolor::Version::MINOR).to be(0)
  end

  it 'PATCH' do
    expect(Concolor::Version::PATCH).to be(1)
  end

  it '#current' do
    expect(described_class.current).to eql('0.0.1')
  end
end
