## Hubspot Events
A simple Ruby wrapper to send event data to Hubspot as behavioral events.

### Usage

From a REPL (irb, rails c)

```
  hubspot = Hubspot::Client.new(hs_api_key: "your hubspot api key")
  hubspot.track("analytics id associated with contact", "contacts email", "event name defined in hubspot e.g. pe000000_test_event")
```

## Note
This is just a first pass at getting something working, there are no error checks applied, so undesirable behavior will occur.
