# ServiceIt
[![Gem Version](https://badge.fury.io/rb/service_it.svg)](https://badge.fury.io/rb/service_it) [![Build Status](https://travis-ci.org/iago-silva/service_it.svg?branch=master)](https://travis-ci.org/iago-silva/service_it) [![Code Climate](https://codeclimate.com/github/iago-silva/service_it.png)](https://codeclimate.com/github/iago-silva/service_it) 

Facilitate the creation of Service Objects, providing the basic and enough to have a complete one and letting you free to use on your own way.

- [ServiceIt](#serviceit)
  - [Installation](#installation)
  - [With Bundler](#with-bundler)
  - [Rails Generator](#rails-generator)
  - [Usage](#usage)
  - [Example](#example)

## Installation

    $ gem install service_it

## With Bundler

Add this line to your `Gemfile`:

    gem 'service_it', '~> 2.0.0'

And then execute:

    $ bundle

## Rails Generator

You can use Rails generator to create a `Service`

    $ rails g service NAME

This will create:

```
├── app
    ├── services
        └── name.rb
```

## Usage

```ruby
class Foo < ServiceIt::Base
  def perform
    # put your logic here
    # you can use params that became variables
  end
end
```

Call your service from anywhere (controllers, models, migrations...)

```ruby
Foo.call(foo: foo, bar: bar)
```

## Example

```ruby
# app/services/release_post.rb
class ReleasePost < ServiceIt::Base
  def perform
    post.prepare_to_release
    post.update(released_at: Date.current)
  end
end
```

```ruby
ReleasePost.call(post: @post)
```
