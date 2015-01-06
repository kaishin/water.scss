RSpec.shared_examples "type functions" do
  context "wtr-is-number(6)" do
    it "returns true" do
      expect(".positive-int").to have_rule("color: green")
    end
  end

  context "wtr-is-number(-456.8)" do
    it "returns true" do
      expect(".negative-float").to have_rule("color: green")
    end
  end

  context "wtr-is-number(+0.0)" do
    it "returns true" do
      expect(".zero-leading-plus").to have_rule("color: green")
    end
  end

  context "wtr-is-number(.60)" do
    it "returns true" do
      expect(".trimmed-zero").to have_rule("color: green")
    end
  end

  context "wtr-is-number(10e3)" do
    it "returns true" do
      expect(".scientific-notation").to have_rule("color: green")
    end
  end

  context "wtr-is-number(12.1.1)" do
    it "returns fasle" do
      expect(".multiple-dots").to have_rule("color: red")
    end
  end

  context "wtr-is-percentage(12%)" do
    it "returns true" do
      expect(".is-percentage").to have_rule("color: green")
    end
  end

  context "wtr-is-percentage(12)" do
    it "returns false" do
      expect(".is-percentage").to have_rule("background: red")
    end
  end

  context "wtr-is-size(12px border-box)" do
    it "returns true" do
      expect(".is-size").to have_rule("color: green")
    end
  end

  context "wtr-is-size(invalid)" do
    it "returns false" do
      expect(".is-size").to have_rule("background: red")
    end
  end

  context "wtr-is-length(12px)" do
    it "returns true" do
      expect(".is-length").to have_rule("color: green")
    end
  end

  context "wtr-is-length(12)" do
    it "returns false" do
      expect(".is-length").to have_rule("background: red")
    end
  end

  context "wtr-is-length(0)" do
    it "returns true" do
      expect(".is-length").to have_rule("display: green")
    end
  end

  context "wtr-is-string(hello)" do
    it "returns true" do
      expect(".is-string").to have_rule("color: green")
    end
  end

  context "wtr-is-calc(calc(100% - 20px))" do
    it "returns true" do
      expect(".is-calc").to have_rule("color: green")
    end
  end

  context "wtr-is-list((1, 2))" do
    it "returns true" do
      expect(".is-list").to have_rule("color: green")
    end
  end

  context "wtr-is-list(1)" do
    it "returns false" do
      expect(".is-list").to have_rule("background: red")
    end
  end
end
