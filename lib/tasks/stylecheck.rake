namespace :stylecheck do
  task :ruby do
    sh 'bundle exec rubocop'
  end
end
