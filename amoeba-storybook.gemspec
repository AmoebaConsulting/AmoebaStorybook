# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "amoeba-storybook"
  s.version = "0.0.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Amoeba Consulting, LLC."]
  s.date = "2013-02-07"
  s.description = "amoeba-storybook is a gem used to create animated css3 presentations."
  s.email = "sayhi@amoe.ba"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION",
    "amoeba-storybook.gemspec",
    "amoeba-storybook.js",
    "amoeba-storybook.min.js",
    "grunt.js",
    "package.json",
    "projectFilesBackup/.idea/AmoebaStorybook.iml",
    "spec/index.html",
    "spec/support/chai-jquery.js",
    "spec/support/jquery-1.9.0.js",
    "spec/support/sinon-1.5.2.js",
    "spec/support/sinon-chai.js",
    "src/amoeba-storybook.coffee",
    "src/storybook/app.coffee",
    "src/storybook/eventHelper.coffee",
    "vendor/assets/javascripts/amoeba-storybook.js",
    "vendor/assets/javascripts/amoeba-storybook.min.js"
  ]
  s.homepage = "https://github.com/sgehrman/AmoebaStorybook"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "amoeba-storybook is a gem used to create animated css3 presentations."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

