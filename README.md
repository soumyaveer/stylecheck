# Stylecheck
Simple to install and easy to use, `Stylecheck` automates the code styling error checks for `Ruby` and `Scss`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stylecheck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stylecheck

#### Configuration:

Run the task to configure `rubocop.yml` and `scss-lint.yml`:

```ruby
rake stylecheck:init
```
Note: This is one time setup step after installation of the gem.

## Usage

#### Ruby style errors:
This task checks for ONLY `Ruby` style errors. It uses `rubocop.yml` file.

```ruby
rake stylecheck:ruby
```

#### Scss style errors:
This task checks for ONLY `Scss` style errors. It uses `scss-lint.yml` file.

```ruby
rake stylecheck:scss
```

#### Ruby and Scss style errors:
This task checks the style errors in `Ruby` as well as `Scss` code.

```ruby
rake stylecheck
```
