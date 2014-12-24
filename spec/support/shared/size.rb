RSpec.shared_examples "size mixin" do
  context "wtr-size(200px)" do
    it "sets width to 200px" do
      expect(".implicit-height").to have_rule("width: 200px")
    end

    it "sets height to 200px" do
      expect(".implicit-height").to have_rule("height: 200px")
    end
  end

  context "wtr-size(200px, 800px)" do
    it "sets width to 200px" do
      expect(".explicit-height").to have_rule("width: 200px")
    end

    it "sets height to 800px" do
      expect(".explicit-height").to have_rule("height: 800px")
    end
  end

  context "wtr-size(200px, invalid)" do
    it "sets width to 200px" do
      expect(".invalid-height").to have_rule("width: 200px")
    end

    it "ignores height" do
      expect(".invalid-height").to_not have_rule("height: invalid")
    end
  end

  context "wtr-size(200px border-box)" do
    it "sets width to 200px border-box" do
      expect(".composite-width").to have_rule("width: 200px border-box")
    end

    it "wtr-size(200px border-box)" do
      expect(".composite-width").to have_rule("height: 200px border-box")
    end
  end

  context "wtr-size(invalid)" do
    it "ignores width" do
      expect(".invalid-width").to_not have_rule("width: invalid")
    end

    it "ignores height" do
      expect(".invalid-width").to_not have_rule("height: invalid")
    end
  end

  context "wtr-size(calc(100% - 20px))" do
    it "sets width to calc(100% - 20px)" do
      expect(".calc-width").to have_rule("width: calc(100% - 20px)")
    end

    it "sets height to calc(100% - 20px)" do
      expect(".calc-width").to have_rule("height: calc(100% - 20px)")
    end
  end

  context "wtr-size(inherit)" do
    it "sets width to 'inherit'" do
      expect(".inherited-width").to have_rule("width: inherit")
    end

    it "sets height to 'inherit'" do
      expect(".inherited-width").to have_rule("height: inherit")
    end
  end
end
