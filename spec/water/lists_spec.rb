require "spec_helper"

describe "ruby-sass list functions" do
  before(:all) do
    ParserSupport.parse_file("lists")
  end

  it_behaves_like "list functions"
end

describe "libsass list functions" do
  before(:all) do
    ParserSupport.parse_file("libsass-lists")
  end

  it_behaves_like "list functions"
end
