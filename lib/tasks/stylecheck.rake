namespace :stylecheck do

  desc 'stylecheck for ruby'
  task :ruby do
    sh 'bundle exec rubocop'
  end
end
