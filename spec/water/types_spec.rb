require "spec_helper"

describe "ruby-sass type functions" do
  before(:all) do
    ParserSupport.parse_file("types")
  end

  it_behaves_like "type functions"
end

describe "libsass type functions" do
  before(:all) do
    ParserSupport.parse_file("libsass-types")
  end

  it_behaves_like "type functions"
end
