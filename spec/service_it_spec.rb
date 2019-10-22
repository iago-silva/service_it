# frozen_string_literal: true

require 'spec_helper'

describe ServiceIt do
  describe SayMyName do
    let(:name) { 'Heisenberg' }
    let(:call) { SayMyName.call(name: 'Heisenberg') }

    it 'says Heisenberg' do
      expect(call).to eq(name)
    end
  end

  context 'when perform method is not defined' do
    it 'raises an NotImplementedError exception' do
      expect do
        MissedPerformService.call
      end.to raise_error(NotImplementedError)
    end
  end
end
