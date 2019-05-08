[![Gem Version](https://badge.fury.io/rb/service_it.svg)](https://badge.fury.io/rb/service_it) [![Build Status](https://travis-ci.org/iago-silva/service_it.svg?branch=master)](https://travis-ci.org/iago-silva/service_it) [![Code Climate](https://codeclimate.com/github/iago-silva/service_it.png)](https://codeclimate.com/github/iago-silva/service_it) [![Test Coverage](https://api.codeclimate.com/v1/badges/fcc8375ebe8fa5412381/test_coverage)](https://codeclimate.com/github/iago-silva/service_it/test_coverage)

# ServiceIt

> [About Service Objects](https://dev.to/ryanwhocodes/a-beginners-guide-to-service-objects-for-ruby-on-rails-1fo5)

<br/>

## Installation

    $ gem install service_it
    
## With Bundler

Add this line to your `Gemfile`:

    gem 'service_it', '~> 1.0.0'

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
    # you can use params that became instance variables
  end
end
```

Call your service from anywhere

```ruby
Foo.call(params)
```    

## Example 

Simple example to release a _POST_

* Before

```ruby
# app/controllers/post_releases_controller.rb
class PostReleasesController < ApplicationController

  # [...]

  def update
    @post.prepare_to_release                      # <--
    if @post.update(released_at: Date.current)    # <--
      redirect_to root_path
    else
      render :edit
    end
  end

  # [...]

end

```

* After

```ruby
# app/controllers/post_releases_controller.rb
class PostReleasesController < ApplicationController

  # [...]

  def update
    if ReleasePost.call(post: @post)    # <--
      redirect_to root_path
    else
      render :edit
    end
  end

  # [...]

end
```    

```ruby
# app/services/release_post.rb
class ReleasePost < ServiceIt::Base
  def perform
    @post.prepare_to_release
    @post.update(released_at: Date.current)
  end
end
```    
