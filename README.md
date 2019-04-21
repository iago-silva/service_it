[![Gem Version](https://badge.fury.io/rb/service_it.svg)](https://badge.fury.io/rb/service_it) [![Build Status](https://travis-ci.org/iago-silva/service_it.svg?branch=master)](https://travis-ci.org/iago-silva/service_it) [![Code Climate](https://codeclimate.com/github/iago-silva/service_it.png)](https://codeclimate.com/github/iago-silva/service_it)

# ServiceIt

[Service objects are a holy grail to keep your controllers and models slim and readable](https://medium.com/selleo/essential-rubyonrails-patterns-part-1-service-objects-1af9f9573ca1)

<br/>

## Installation

    $ gem install service_it
    
## With Bundler

Add this line to your `Gemfile`:

    gem 'service_it', '~> 1.0.0'

And then execute:

    $ bundle
    
## With Rails

You can use Rails generator to create a `Service`

    $ rails g service NAME

## Usage

```ruby
class Foo < ServiceIt::Base
  def perform
    # here you can use params that became instance variables
  end
end
```

Call your service from anywhere
```ruby
Foo.call(params)
```    

## Example 

Simple example _using Rails_ to change status of a _transaction_ to complete

    $ rails g service CompleteTransaction

```ruby
# app/services/complete_transaction.rb
class CompleteTransaction < ServiceIt::Base
  def perform
    @transaction.update(:status, :complete)
  end
end
```    

```ruby
if CompleteTransaction.call(transaction: transaction)
  puts 'Transaction complete!'
end
```    

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iago-silva/service_it.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).