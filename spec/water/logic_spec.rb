require "spec_helper"

describe "wtr-is-not()" do
  before(:all) do
    ParserSupport.parse_file("logic")
  end

  context "when passed true" do
    it "returns false" do
      expect(".is-not").to have_rule("color: red")
    end
  end
end
