namespace :stylecheck do
  desc "Copies default configs"
  task :init do
    default_rubocop_config_path = File.join(Gem.loaded_specs["stylecheck"].full_gem_path, "config/stylecheck", "rubocop.yml")
    target_dir = FileUtils.mkdir_p("./config/stylecheck")
    app_rubocop_config_path = File.join(target_dir, "rubocop.yml" )
    FileUtils.cp_r(default_rubocop_config_path, app_rubocop_config_path)

    default_scss_config_path = File.join(Gem.loaded_specs["stylecheck"].full_gem_path, "config/stylecheck", "scss-lint.yml")
    app_scss_config_path = File.join(target_dir, "scss-lint.yml" )
    FileUtils.cp_r(default_scss_config_path, app_scss_config_path)
  end

  desc 'Stylecheck for ruby'
  task :ruby do
    sh 'bundle exec rubocop --config config/stylecheck/rubocop.yml'
  end

  desc 'Stylecheck for scss'
  task :scss do
    sh 'bundle exec scss-lint --config config/stylecheck/scss-lint.yml'
  end

  desc 'Stylecheck for ruby and scss'
  task :all do
    %W[ruby scss].each do |task_name|
      begin
        Rake::Task[task_name].invoke

      rescue => e
        puts "Task #{ task_name } failed with message #{ e.message }"
      end
    end
  end
end
