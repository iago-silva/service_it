# frozen_string_literal: true

describe ServiceIt do
  let(:version) { '2.0.0' }

  it 'has the correct version number' do
    expect(ServiceIt::VERSION).to eq(version)
  end
end
