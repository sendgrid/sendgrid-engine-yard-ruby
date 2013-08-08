# Open Emails - Deploying SendGrid and Ruby on Engine Yard

Open Emails is a sample app by SendGrid to demonstrate how to deploy SendGrid on Engine Yard. 

This particular version is a clone of the [PHP Open Emails app](https://github.com/sendgrid/sendgrid-engine-yard-php) authored by [Nick Quinlan](http://github.com/nquinlan).

## Deploying the App
- To deploy this app and integrate SendGrid follow the instructions [in our documentation](http://sendgrid.com/docs/Integrate/Partners/EngineYard.html#-Deploying-a-Ruby-App-With-SendGrid-and-Engine-Yard)
- You must then [point the Parse Webhook for your domain](http://sendgrid.com/docs/API_Reference/Webhooks/parse.html) at your instance, specifically at the endpoint `/parse`. Log in to SendGrid.com with the credentials provided by Engine Yard, to do this.

## Requirements
* Engine Yard Cloud (Tested on `Ruby 2.0.0` `stable-v4`)
* MySQL (Tested with `MySQL 5.5.x`)

## Questions/Comments/Help

Please contact Elmer Thomas: [@ThinkingSerious](http://www.twitter.com/thinkingserious) or [elmer.thomas@sendgrid.com](mailto:elmer.thomas@sendgrid.com)