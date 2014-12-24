module SassSupport
  def generate_css
    _mkdir("tmp")
    system("bundle exec sass -q -I . --update tests/ruby-sass:tmp")
    Dir.glob('./tests/libsass/*.scss') do |file|
      name = File.basename(file, '.scss')
      system("./lib/sassc tests/libsass/#{name}.scss tmp/libsass-#{name}.css")
    end
  end

  def clean_up
    FileUtils.rm_rf("tmp")
  end
end
