# README

This application is an Instagram clone, it's for studying purposes only.

## Ruby version
```
ruby 2.5.5p157
```

## System dependencies
- [Yarn](https://yarnpkg.com)
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```

- [GraphViz](http://graphviz.org/)
```
sudo apt-get install graphviz
```

## Configuration
```
bundle install
rake db:migrate
```

## Database creation
```
rake db:migrate
```
