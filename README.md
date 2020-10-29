# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* To create an API KEY, open rails console (rails c), and run 'ApiKey.create!', this will genereate a "token" to use as the key

* run "curl 'http://localhost:3000/reviews?token=YOURGENERATEDTOKEN'-I" to check status in terminal

* how to search city and page# of results
http://localhost:3000/reviews?city=a&page=2&token=5dcf89ff80340091cc1cc13e0be80730

* how to search for city and country:
http://localhost:3000/reviews?city=ch&country=a&token=2a1ca48138e7d57c438d63b817ed8513

* to make a put(edit) request, you must be at /review/id?token=YOUREGENERATEDTOKEN

* to make a post request, you must be at /reviews?token=YOUREGENERATEDTOKEN, and add review_params to the body in postman 