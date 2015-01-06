RSpec.shared_examples "assert mixin" do
  context "wtr-assert(false, \"It should be true\")" do
    it "throws error" do
      expect(".assert").to_not have_rule("color: red")
    end
  end
end
