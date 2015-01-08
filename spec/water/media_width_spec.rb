require "spec_helper"

describe "ruby-sass wtr-media-width()" do
  before(:all) do
    ParserSupport.parse_file("media-width")
  end

  it_behaves_like "wtr-media-width()"
end

describe "libsass wtr-media-width()" do
  before(:all) do
    ParserSupport.parse_file("libsass-media-width")
  end

  it_behaves_like "wtr-media-width()"
end
