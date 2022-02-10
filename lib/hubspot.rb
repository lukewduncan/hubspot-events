require 'rubygems'
require 'httparty'

module Hubspot
  class Client
    include HTTParty
    API_ENDPOINT = 'https://api.hubapi.com/events/v3'.freeze

    def initialize(options={})
      @hs_api_key = options[:hs_api_key]
      self.class.base_uri API_ENDPOINT
      self.class.headers "content-type": 'application/json'
    end

    def track(ua_id, email, event_name)
      self.class.post("/send", 
        body: "{\"utk\":\"#{ua_id}\",\"email\":\"#{email}\",\"eventName\":\"#{event_name}\"}",
        query: { hapikey: @hs_api_key }
      )
    end
  end
end
