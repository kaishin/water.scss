require "spec_helper"

describe "ruby-sass logic functions" do
  before(:all) do
    ParserSupport.parse_file("logic")
  end

  it_behaves_like "logic functions"
end

describe "libsass logic functions" do
  before(:all) do
    ParserSupport.parse_file("libsass")
  end

  it_behaves_like "logic functions"
end
