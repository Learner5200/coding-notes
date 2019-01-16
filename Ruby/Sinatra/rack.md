# Rack

* Rack is a (minimal) interface between Ruby and web servers
* It can translate for both ruby and web servers so they can speak to each other reliably
  - Means you can easily change server from WEBrick to puma, or rails to sinatra, without everything breaking - they can all 'speak rack'
