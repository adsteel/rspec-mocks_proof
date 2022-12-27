# frozen_string_literal: true

RSpec.describe Rspec::MocksProof do
  class ExampleClass
    def example_method(keyword_arg:)
      puts "passed keyword_arg: #{keyword_arg}"
    end
  end

  let(:double) { instance_double("ExampleClass", example_method: nil) }

  before(:each) do
    allow(ExampleClass).to receive(:new).and_return(double)
  end

  it "mocks a keyword arg" do
    expect(double).to receive(:example_method).with(keyword_arg: 1)

    ExampleClass.new.example_method(keyword_arg: 1)
  end
end
