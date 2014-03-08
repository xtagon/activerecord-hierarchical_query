source 'https://rubygems.org'

# Specify your gem's dependencies in activerecord-hierarchical_query.gemspec
gemspec

group :local do
  gem 'yard'
  gem 'redcarpet'
  gem 'github-markup'
  gem 'appraisal', '>= 1.0.0.beta3'
end

group :pg, :travis do
  gem 'pg', '~> 0.17.1'
end

group :oracle do
  gem 'ruby-oci8', '~> 2.1.0', :type => :development
  gem 'activerecord-oracle_enhanced-adapter', '>= 1.4.0', :type => :development
end

group :travis do
  gem 'coveralls'
end