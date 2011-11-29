require 'cora'
require 'siri_objects'
require 'rubygems'
require 'appscript'

#######
# This is a "hello world" style plugin. It simply intercepts the phrase "text siri proxy" and responds
# with a message about the proxy being up and running (along with a couple other core features). This 
# is good base code for other plugins.
# 
# Remember to add other plugins to the "config.yml" file if you create them!
######

class SiriProxy::Plugin::Launcher < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

 listen_for /just (.*) please/i do |appName|
 	it = Appscript.app(appName)
	it.run
 say "Ok, " + appName + " launched."
 request_completed
 end
 

 
 
  

end
