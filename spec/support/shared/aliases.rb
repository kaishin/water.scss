RSpec.shared_examples "aliases" do
  context "size(200px)" do
    it "sets width to 200px" do
      expect(".aliased").to have_rule("width: 200px")
    end

    it "sets height to 200px" do
      expect(".aliased").to have_rule("height: 200px")
    end
  end
end
