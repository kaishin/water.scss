require "spec_helper"

describe "ruby-sass size mixin" do
  before(:all) do
    ParserSupport.parse_file("size")
  end

  it_behaves_like "size mixin"
end

describe "libsass size mixin" do
  before(:all) do
    ParserSupport.parse_file("libsass-size")
  end

  it_behaves_like "size mixin"
end
