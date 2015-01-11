require "spec_helper"

describe "ruby-sass <%= prefixedName %>()" do
  before(:all) do
    ParserSupport.parse_file("<%= name %>")
  end

  it_behaves_like "<%= prefixedName %>()"
end

describe "libsass <%= prefixedName %>()" do
  before(:all) do
    ParserSupport.parse_file("libsass-<%= name %>")
  end

  it_behaves_like "<%= prefixedName %>()"
end
