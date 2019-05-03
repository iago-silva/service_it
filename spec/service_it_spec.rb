require 'spec_helper'

describe ServiceIt do
  describe SayMyName do
    let(:name) { 'Heisenberg' }
    let(:perform) { described_class.call(name: name) }

    it 'says Heisenberg' do
      expect(perform).to eq(name)
    end
  end

  context 'when call method is not defined' do
    it 'raises an exception' do
      expect do
        MissedCallService.call
      end.to raise_error(NotImplementedError)
    end
  end
end
