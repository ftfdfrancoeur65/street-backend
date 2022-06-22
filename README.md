# Quick start for ls-backend


Clone the repo locally ✅

```
bundle install

rails db:setup
# this will run migrations that create the loans table and also
# seed the database with about 20 loans

rails s -p 3001
# this will run the server on port 3001, frontend client runs on 3000

```

All set, try hitting the api/v1/loans/1 endpoint! ✅