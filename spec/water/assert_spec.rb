require "spec_helper"

describe "ruby-sass assert mixin" do
  before(:all) do
    ParserSupport.parse_file("assert")
  end

  it_behaves_like "assert mixin"
end
