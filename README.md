# Stylecheck
Runs the code style check on `Ruby` and `SCSS` files.

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

```ruby
rake stylecheck:init
```
This copies default `rubocop.yml`, `scss-lint.yml` to the app's `config/stylecheck` folder.
Modifies them based on your project's convention

## Usage

#### Ruby style errors:
Validates code style on `Ruby` files based on `config/stylecheck/rubocop.yml`

```ruby
rake stylecheck:ruby
```

#### Scss style errors:
Validates code style on `SCSS` files based on `config/stylecheck/scss-lint.yml`

```ruby
rake stylecheck:scss
```

#### Ruby and Scss style errors:
Validates code style for `Ruby` and `SCSS` files.

```ruby
rake stylecheck
```
