require "spec_helper"

describe "#hello_t" do
  let (:names) { ["Tim", "Tom", "Jim"] }
  it "only passes names that start with 'T' to the block" do
    expect{hello_t(names){ }}.to output("tricked\n").to_stdout
  end

  it "returns an array with only names that start with 'T'" do
    expect(hello_t(names) { }).to eq(nil)
  end

  it "is case insensitive" do
    other_names = ["tim", "tom", "jim"]
    expect{hello_t(other_names){ }}.to output("tricked\n").to_stdout
  end
end
