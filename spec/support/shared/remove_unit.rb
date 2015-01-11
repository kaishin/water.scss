RSpec.shared_examples "wtr-remove-unit()" do
  context "wtr-remove-unit(40rem)" do
    it "returns 40" do
      expect(".remove-unit").to have_rule("line-height: 1.25")
    end
  end
end
