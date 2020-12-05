# frozen_string_literal: true

describe ServiceIt::Base do
  context 'when calls new method' do
    subject { described_class.new }

    it 'raises NoMethodError exception' do
      expect { subject }.to raise_error(NoMethodError)
    end
  end

  describe SayMyName do
    context 'when I ask what is my name' do
      subject { described_class.call(name: name) }

      let(:name) { 'Heisenberg' }

      it 'says Heisenberg' do
        expect(subject).to eq(name)
      end
    end
  end

  describe MissedPerformService do
    context 'when perform method is not defined' do
      subject { described_class.call }

      it 'raises NotImplementedError exception' do
        expect { subject }.to raise_error(NotImplementedError)
      end
    end
  end
end
