# Criteo API Client Library

This ruby gem is the client library for [Yahoo Ads API](http://promotionalads.yahoo.co.jp/developercenter/programs/) .

It contains full support for all API services with full stubs, and a simplified
programming interface that lets you handle everything in native Ruby
collections.


# Docs for Users

## 1 - Installation

`yahoo_ad_api` is ruby gems.

Install them using the gem install command:

```Gemfile
gem 'yahoo_ad_api', git: "git@github.com:f-scratch/yahoo_ad_api.git"
```

The gem also depends on the
Shampoohat library, which will be installed automatically.

The following gem libraries are required:

 - `savon` (version 1.x)
 - `shampoohat` (original, minor change of `google-ads-common`)

## 2 - Using the client library

By default, the API uses a config file in `ENV['HOME']/yahoo_ad_api.yml`.

You can also pass the API a manually constructed config hash like:

    criteo = YahooAdApi::Api.new({
      :authentication => {
          :method => 'OAuth2',
          :oauth2_client_id => 'INSERT_OAUTH2_CLIENT_ID_HERE',
          :oauth2_client_secret => 'INSERT_OAUTH2_CLIENT_SECRET_HERE',
          :developer_token => 'DEVELOPER_TOKEN',
          :client_customer_id => '012-345-6789',
          :user_agent => 'Ruby Sample'
      },
      :service => {
        :environment => 'PRODUCTION'
      }
    })

Once you have all the requisite setup complete, you're ready to make an API
call.

The basics of making a request are:

 1. Include the library with `require`:

        require 'creteo_api'

 2. Create an API instance:

        criteo = YahooAdApi::Api.new

 3. Specify which service you're looking to use, and which version:

        yahoo_srv = yahoo.service(:AdvertiserService, API_VERSION)

 4. You should now be able to just use the API methods in the returned object:

        criteo_srv.get_account

# Docs for Developers

## Rake targets

To regenerate all the stubs for all versions if needed:

    $ rake generate

To target a specific version:

    $ rake generate[version]

For example:

    $ rake generate[v201502]

To target a specific service in a specific version:

    $ rake generate[version,service]

For example:

    $ rake generate[v201502,CampaignService]

To build the gems:

    $ gem build yahoo_ad_api.gemspec

To run unit tests on the library:

    $ rake test

## Authors
- Junya Wako(junwako@gmail.com)
