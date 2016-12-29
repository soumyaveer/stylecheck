require 'stylecheck'
require 'rails'

module Stylecheck
  class Railtie < Rails::Railtie
    railtie_name :stylecheck

    rake_tasks do
      load 'tasks/stylecheck.rake'
    end
  end
end
