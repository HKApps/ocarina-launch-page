Ocarina Landing Page
---------

A sinatra app for managing emails.


## Installation
1) Create database in postgresql

```
$ psql
user=# create database ocarina_landing_page_development
```

2) Migrate

```
$ rake db:migrate
```

3) Start the sinatra app

```
$ ruby app.rb
```
