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


listen_for /please fix my media center/i do
	te = Appscript.app('iTunes')
	if te.is_running?
	say "Ok, I see iTunes is Running, I'll kill it now."
   	te.quit
	sleep(1)
	say "Ok, iTunes should have been killed, we'll wait a couple to make sure."
	sleep(2)
end
say "Ok, now we'll relaunch iTunes."
te.launch
sleep (1)
say "OK, Things are back to normal."
request_completed
end



end
