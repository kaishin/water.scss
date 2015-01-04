RSpec.shared_examples "number functions" do
  context "wtr-increment(199px)" do
    it "returns 200px" do
      expect(".increment").to have_rule("width: 200px")
    end
  end

  context "wtr-increment(200px, 5)" do
    it "returns 205px" do
      expect(".increment").to have_rule("height: 205px")
    end
  end

  context "wtr-decrement(200px)" do
    it "returns 199px" do
      expect(".decrement").to have_rule("width: 199px")
    end
  end

  context "wtr-decrement(200px, 5)" do
    it "returns 195px" do
      expect(".decrement").to have_rule("height: 195px")
    end
  end
end
