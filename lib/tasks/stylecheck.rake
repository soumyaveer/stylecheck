namespace :stylecheck do
  desc 'Stylecheck for ruby'
  task :ruby do
    sh 'bundle exec rubocop --config config/stylecheck/rubocop.yml'
  end

  desc "Copies default configs"
  task :init do
    sh 'cp config/stylecheck/rubocop.yml Rails.root/config/stylecheck/rubocop.yml'
  end
end
