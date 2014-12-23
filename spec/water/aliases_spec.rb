require "spec_helper"

describe "aliases" do
  before(:all) do
    ParserSupport.parse_file("aliases")
  end

  context "when including size(200px)" do
    it "sets width to 200px" do
      expect(".aliased").to have_rule("width: 200px")
    end

    it "sets height to 200px" do
      expect(".aliased").to have_rule("height: 200px")
    end
  end
end
