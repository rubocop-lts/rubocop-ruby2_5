# frozen_string_literal: true

# external libs
require "version_gem"

# this gem
require_relative "ruby2_5/version"
# :nocov:
require_relative "ruby2_5/railtie" if defined?(Rails::Railtie)
# :nocov:

module Rubocop
  # Namespace of this library
  module Ruby25
    module_function def install_tasks
      load "rubocop/ruby2_5/tasks.rb"
    end
  end
end

Rubocop::Ruby25::Version.class_eval do
  extend VersionGem::Basic
end
