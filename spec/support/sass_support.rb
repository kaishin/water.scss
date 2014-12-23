module SassSupport
  def generate_css
    _mkdir("tmp")
    system("bundle exec sass -q -I . --update tests:tmp")
  end

  def clean_up
    FileUtils.rm_rf("tmp")
  end
end
