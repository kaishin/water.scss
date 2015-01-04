require "spec_helper"

describe "ruby-sass number functions" do
  before(:all) do
    ParserSupport.parse_file("number")
  end

  it_behaves_like "number functions"
end

describe "libsass number functions" do
  before(:all) do
    ParserSupport.parse_file("libsass-number")
  end

  it_behaves_like "number functions"
end
