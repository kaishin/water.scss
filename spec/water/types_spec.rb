require "spec_helper"

describe "-wtr-is-number()" do
  before(:all) do
    ParserSupport.parse_file("types")
  end

  context "when passed 6" do
    it "returns true" do
      expect(".positive-int").to have_rule("color: green")
    end
  end

  context "when passed -456.8" do
    it "returns true" do
      expect(".negative-float").to have_rule("color: green")
    end
  end

  context "when passed +0.0" do
    it "returns true" do
      expect(".zero-leading-plus").to have_rule("color: green")
    end
  end

  context "when passed .60" do
    it "returns true" do
      expect(".trimmed-zero").to have_rule("color: green")
    end
  end

  context "when passed 10e3" do
    it "returns true" do
      expect(".scientific-notation").to have_rule("color: green")
    end
  end

  context "when passed 12.1.1" do
    it "returns fasle" do
      expect(".multiple-dots").to have_rule("color: red")
    end
  end
end

describe "-wtr-is-percentage()" do
  context "when passed 12%" do
    it "returns true" do
      expect(".percentage").to have_rule("color: green")
    end
  end

  context "when passed 12" do
    it "returns false" do
      expect(".percentage").to have_rule("background: red")
    end
  end
end
