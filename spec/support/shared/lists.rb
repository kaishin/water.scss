RSpec.shared_examples "list functions" do
  context "wtr-list-contains($absolute-wtr-length-units, 'px')" do
    it "returns true" do
      expect(".contains").to have_rule("background: green")
    end
  end

  context "wtr-list-contains-not($absolute-wtr-length-units, 'px')" do
    it "returns false" do
      expect(".contains").to have_rule("color: red")
    end
  end
end
