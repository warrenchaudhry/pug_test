# README
Spoing Infotech Take-Home Technical Test

## Prerequisites
----
You will need the following things properly installed on your computer.

* [Ruby](http://ruby-lang.org) (with RubyGems and Bundler)
* [Git](http://git-scm.com/)


## Installation
___
Clone the repository or download and uncompress the code

```
$ git clone git@github.com:warrenchaudhry/pug_test.git
$ cd pug_test
```

###### Rails application installation

0. Install the Rubygems dependencies
```
$ bundle install
```

  It is highly recommended for you to use a virtual environment with user-based libraries instead of system-based. Check out https://rvm.io , for example.

0. Create database and migration

  ```
  $ rails db:create
  $ rails db:migrate
  ```

0. Seed the tables

  ```
  $ rails db:seed
  ```

0. The project should work from here on, but if it has been updated with new dependencies, pull the code again, and run

 `$ bundle install`.  

0. Run the tests
```
$ rake
```

0. Start the application
```
$ rails s
```

0. Visit your application at http://localhost:3000

## Test data
---
Once the application is running, you can access the application with the following data.

There should be given users:

| Email                      | Type              |
| -------------------        | ----------------- |
| juandelacruz@email.com     | Administrator     |
| juanitadelacruz@email.com  | Paying Customer   |
| juanitodelacruz@email.com  | Free Customer     |

For each account, password is **password1234**

----
### Author's Info
##### Software
* Darwin  14.5.0 `Darwin Kernel Version 14.5.0: Mon Aug 29 21:14:16 PDT 2016; root:xnu-2782.50.6~1/RELEASE_X86_64 x86_64`
* Ruby `ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin14]`
* Rails `5.0.0.1`
* Gem `2.6.7`
* Bundler `Bundler version 1.13.2`
