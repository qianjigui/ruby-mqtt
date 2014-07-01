#!/usr/bin/env ruby
#
# encoding: utf-8
#

libdir = File.expand_path(File.dirname(__FILE__))+'/../lib'
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'mqtt'

joinThreads = []


joinThreads<<Thread.new do
    #   # Subscribe example
    MQTT::Client.connect('localhost') do |c|
        # If you pass a block to the get method, then it will loop
        c.get('test') do |topic,message|
            puts "#{topic}: #{message}"
            break
        end
    end
end

Thread.new do
    sleep 3
    # Publish example
    MQTT::Client.connect('localhost') do |c|
        c.publish('test', 'Hello World')
    end
end

joinThreads.each {|t| t.join}
