# -*- encoding: utf-8 -*-
# stub: graphql-api 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "graphql-api".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Colin Walker".freeze]
  s.date = "2017-04-06"
  s.email = ["colinwalker270@gmail.com".freeze]
  s.files = ["MIT-LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "lib/graphql".freeze, "lib/graphql/api".freeze, "lib/graphql/api.rb".freeze, "lib/graphql/api/command_type.rb".freeze, "lib/graphql/api/helpers.rb".freeze, "lib/graphql/api/policy.rb".freeze, "lib/graphql/api/query_type.rb".freeze, "lib/graphql/api/resolvers".freeze, "lib/graphql/api/resolvers/command_mutation.rb".freeze, "lib/graphql/api/resolvers/field.rb".freeze, "lib/graphql/api/resolvers/model_create_mutation.rb".freeze, "lib/graphql/api/resolvers/model_delete_mutation.rb".freeze, "lib/graphql/api/resolvers/model_find_query.rb".freeze, "lib/graphql/api/resolvers/model_list_query.rb".freeze, "lib/graphql/api/resolvers/model_update_mutation.rb".freeze, "lib/graphql/api/resolvers/query_object_query.rb".freeze, "lib/graphql/api/schema.rb".freeze, "lib/graphql/api/schema_error.rb".freeze, "lib/graphql/api/unauthorized_exception.rb".freeze, "lib/graphql/api/version.rb".freeze]
  s.homepage = "https://github.com/coldog/graphql-api".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Rails graphql framework.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2.6"])
      s.add_runtime_dependency(%q<graphql>.freeze, ["~> 1.4.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.2.6"])
      s.add_dependency(%q<graphql>.freeze, ["~> 1.4.1"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.2.6"])
    s.add_dependency(%q<graphql>.freeze, ["~> 1.4.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
