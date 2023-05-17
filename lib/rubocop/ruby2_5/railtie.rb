module Rubocop
  module Ruby25
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_5

      rake_tasks do
        load "rubocop/ruby2_5/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
