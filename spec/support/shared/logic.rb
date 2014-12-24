RSpec.shared_examples "logic functions" do
  context "wtr-is-not(true)" do
    it "returns false" do
      expect(".is-not").to have_rule("color: red")
    end
  end
end
