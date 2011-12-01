require 'cora'
require 'siri_objects'
require 'rubygems'
require 'appscript'

#######
# This is a apple script launcher plugin. It simply intercepts the phrase "just * please" and responds
# by launching the app you specify on the siri proxy 
# 
# Remember to add the plugin to the "config.yml" 
######

class SiriProxy::Plugin::Launcher < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

 listen_for /open (.*) /i do |appName|
 	it = Appscript.app(appName)
    	it.activate
	it.run
 say "Ok, " + appName + " launched."
 request_completed
 end

end
