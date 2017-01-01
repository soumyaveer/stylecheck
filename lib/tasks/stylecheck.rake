namespace :stylecheck do
  desc "Copies default configs"
  task :init do
    source = File.join(Gem.loaded_specs["stylecheck"].full_gem_path, "config/stylecheck", "rubocop.yml")
    target_dir = FileUtils.mkdir_p "./config/stylecheck"
    target = File.join(target_dir, "rubocop.yml" )
    FileUtils.cp_r source, target
  end

  desc 'Stylecheck for ruby'
  task :ruby do
    sh 'bundle exec rubocop --config config/stylecheck/rubocop.yml'
  end

  desc 'Stylecheck for scss'
  task :scss do
    sh 'bundle exec scs-lint --config config/stylecheck/scss-lint.yml'
  end
end
