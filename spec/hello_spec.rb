require "spec_helper"

describe "#hello_t" do
  let (:names) { ["Tim", "Tom", "Jim"] }
  it "only passes names that start with 'T' to the block" do
    expect{hello_t(names){|name| puts "Hi, #{name}" if name.upcase.start_with?("T") }}.to output("Hi, Tim\nHi, Tom\n").to_stdout
  end

  it "returns an array with only names that start with 'T'" do
    expect(hello_t(names) do |name|
        if name.upcase.start_with?("T")
            puts "Hi, #{name}"
            name
        end
    end).to eq(["Tim", "Tom"])
  end

  it "is case insensitive" do
    other_names = ["tim", "tom", "jim"]
    expect{hello_t(other_names){|name| puts "Hi, #{name}" if name.upcase.start_with?("T") }}.to output("Hi, tim\nHi, tom\n").to_stdout
  end
end