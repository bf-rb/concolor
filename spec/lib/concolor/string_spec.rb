# frozen_string_literal: true

RSpec.describe Concolor::String do
  subject(:blank_str) { described_class.new }

  describe '#parse_options!' do
    it 'full valid options' do
      expect(
        blank_str.send(:parse_options!, %i[black bg_blue bold])
      ).to be_a(Hash)
    end

    it 'wrong options' do
      expect do
        blank_str.send(:parse_options!, %i[my_options boo foo bold])
      end.to raise_error(ArgumentError, /my_options, boo, foo/)
    end

    it 'one wrong option' do
      expect do
        blank_str.send(:parse_options!, %i[black my_options bold])
      end.to raise_error(ArgumentError, /my_options/)
    end
  end

  describe '#style' do
    it 'full options' do
      concolor = described_class.new(options: %i[black bg_red bold blink])
      expect(concolor.send(:style)).to eq('30;41;1;5')
    end

    it 'one option' do
      concolor = described_class.new(options: %i[red])
      expect(concolor.send(:style)).to eq('31')
    end

    it 'two options' do
      concolor = described_class.new(options: %i[bg_green red])
      expect(concolor.send(:style)).to eq('31;42')
    end
  end
end
