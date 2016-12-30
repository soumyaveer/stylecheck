namespace :stylecheck do
  desc 'Stylecheck for ruby'
  task :ruby do
    sh 'bundle exec rubocop --config config/stylecheck/rubocop.yml'
  end

  desc "Copies default configs"
  task :init do
    source = File.join(Gem.loaded_specs["stylecheck"].full_gem_path, "config/stylecheck", "rubocop.yml")
    target = File.join(Rails.root.to_s, "config", "stylecheck/rubocop.yml")
    FileUtils.cp_r source, target
  end
end
