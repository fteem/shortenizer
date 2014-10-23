# Shortenizer

Shortenizer is a tiny mountable URL shortener for your Rails application. 


## Installation
* Install the gem by adding it to your Gemfile.
* Mount the engine by adding this to your routes file.
```ruby
  mount Shortenizer::Engine => "/your-preferred-route"
```


* Run migrations
```ruby
  rake db:migrate
```

## Usage
To shorten a link, visit: 
```
  http://your-app-host/your-preferred-route/shorten
```

## Contributing

1. Fork it ( http://github.com/fteem/shortenizer/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

