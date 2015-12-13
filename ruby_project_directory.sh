echo 'Enter the Porject Name:'
read file_name
echo "Ruby Project Creating $file_name"

cd ~/work
mkdir $file_name

cd $file_name
mkdir lib
mkdir bin
mkdir spec
touch README.md
touch Rakefile
touch Gemfile

cd spec
mkdir $file_name
touch spec_helper.rb
echo 'require' + $file_name + '.rb' > spec_helper.rb

cd ..
cd lib
mkdir $file_name
touch $file_name.rb

cd ..
echo 'require "rspec/core/rake_task"\nRSpec::Core::RakeTask.new(:spec)\ndesc "Run the default task"\ntask :default => [:spec]' > Rakefile

echo 'source "https://rubygems.org"\ngem "rake"\ngem "rspec"' > Gemfile

echo $file_name > README.md

bundle install

echo 'project is successfully created.'
