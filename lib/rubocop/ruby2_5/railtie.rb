module Rubocop
  module Ruby25
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_5

      if Rails.env.test? || Rails.env.development?
        rake_tasks do
          Rubocop::Ruby25.install_tasks
        end
      end
    end
  end
end
