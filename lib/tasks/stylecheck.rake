namespace :stylecheck do
  desc 'Stylecheck for ruby'
  task :ruby do
    sh 'bundle exec rubocop'
  end
end
