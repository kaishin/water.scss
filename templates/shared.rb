RSpec.shared_examples "<%= prefixedName %>()" do
  context "<%= prefixedName %>()" do
    it "Does things" do
      expect(".<%= name %>").to have_rule("background: green")
    end
  end
end
