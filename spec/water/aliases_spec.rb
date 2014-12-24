require "spec_helper"

describe "aliases" do
  before(:all) do
    ParserSupport.parse_file("aliases")
  end

  it_behaves_like "aliases"
end

describe "aliases" do
  before(:all) do
    ParserSupport.parse_file("libsass-aliases")
  end

  it_behaves_like "aliases"
end
