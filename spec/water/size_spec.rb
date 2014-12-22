require "spec_helper"

describe "-wtr-size()" do
  before(:all) do
    ParserSupport.parse_file("size")
  end

  context "when passed 200px" do
    it "sets width to 200px" do
      expect(".single-parameter").to have_rule("width: 200px")
    end

    it "sets height to 200px" do
      expect(".single-parameter").to have_rule("height: 200px")
    end
  end
end
