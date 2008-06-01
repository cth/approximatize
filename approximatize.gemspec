(in /Users/christianhave/code/approximatize)
Gem::Specification.new do |s|
  s.name = %q{approximatize}
  s.version = "0.0.1"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christian Theil Have"]
  s.date = %q{2008-06-01}
  s.description = %q{Allow spelling mistakes in ruby code}
  s.email = ["christiantheilhave@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/approximatize.rb", "lib/approximatize/approximatize.rb", "lib/approximatize/version.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_approximatize.rb", "test/test_helper.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{http://approximatize.rubyforge.org}
  s.post_install_message = %q{
For more information on approximatize, see http://approximatize.rubyforge.org

NOTE: Change this information in PostInstall.txt 
You can also delete it if you don't want it.


}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{approximatize}
  s.rubygems_version = %q{1.0.1}
  s.summary = %q{Allow spelling mistakes in ruby code}
  s.test_files = ["test/test_approximatize.rb", "test/test_helper.rb"]
end
