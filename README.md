# README

**Email mailer** is a service that accepts http POST requests, manipulates the data and sends an email using third party transactional providers.

## Getting Started:
1. Clone this repository
2. Run `bundle install`
3. Set the environment variables for `USER_NAME` and `API_KEY` with relevent values.
4. Start the rails server locally with `rails s`
5. Go to Postman `http://localhost:3000/email` and create a request with the example body:
      ```
      {
        "to": "susan@abcpreschool.org",
        "to_name": "Miss Susan",
        "from": "no-reply@brightwheel.com",
        "from_name": "brightwheel",
        "subject": "Your Weekly Report",
        "body": "<h1>Weekly Report</h1><p>You saved 10 hours this week!</p>"
      }
      ```

* Language: Ruby on Rails
* Used Rails ActionMailer as it is the most widely used mailer to send emails by providing mailers and views.
* If had more time, would have read SendGrid and Mailgun documentations and other Medium articles to gain better understandability. Would have spent more time for cleaner, effective code.

