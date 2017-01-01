namespace :stylecheck do
  desc "Copies default configs"
  task :init do
    ruby_source = File.join(Gem.loaded_specs["stylecheck"].full_gem_path, "config/stylecheck", "rubocop.yml")
    target_dir = FileUtils.mkdir_p "./config/stylecheck"
    ruby_target = File.join(target_dir, "rubocop.yml" )
    FileUtils.cp_r ruby_source, ruby_target

    scss_source = File.join(Gem.loaded_specs["stylecheck"].full_gem_path, "config/stylecheck", "scss-lint.yml")
    scss_target = File.join(target_dir, "scss-lint.yml" )
    FileUtils.cp_r scss_source, scss_target
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
  task all: [:ruby, :scss]
end
