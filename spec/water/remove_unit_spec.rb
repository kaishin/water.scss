require "spec_helper"

describe "ruby-sass wtr-remove-unit()" do
  before(:all) do
    ParserSupport.parse_file("remove-unit")
  end

  it_behaves_like "wtr-remove-unit()"
end

describe "libsass wtr-remove-unit()" do
  before(:all) do
    ParserSupport.parse_file("libsass-remove-unit")
  end

  it_behaves_like "wtr-remove-unit()"
end
