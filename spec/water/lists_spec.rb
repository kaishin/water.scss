require "spec_helper"

describe "-wtr-list-contains()" do
  before(:all) do
    ParserSupport.parse_file("lists")
  end

  context "when passed $absolute--wtr-length-units and 'px'" do
    it "returns true" do
      expect(".contains").to have_rule("background: green")
    end
  end
end

describe "-wtr-list-contains-not()" do
  context "when passed $absolute--wtr-length-units and 'px'" do
    it "returns false" do
      expect(".contains").to have_rule("color: red")
    end
  end
end
