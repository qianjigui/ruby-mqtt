[![Build Status](https://travis-ci.org/njh/ruby-mqtt.svg)](https://travis-ci.org/njh/ruby-mqtt)

ruby-mqtt
=========

Pure Ruby gem that implements the MQTT protocol, a lightweight protocol for publish/subscribe messaging.


Installing
----------

You may get the latest stable version from Rubygems:

    $ gem install mqtt


Synopsis
--------

    require 'rubygems'
    require 'mqtt'
    
    # Publish example
    MQTT::Client.connect('test.mosquitto.org') do |c|
      c.publish('topic', 'message')
    end
    
    # Subscribe example
    MQTT::Client.connect('test.mosquitto.org') do |c|
      # If you pass a block to the get method, then it will loop
      c.get('test') do |topic,message|
        puts "#{topic}: #{message}"
      end
    end


Limitations
-----------

 * Only QOS 0 currently supported


Resources
---------

* MQTT Homepage: http://www.mqtt.org/
* GitHub Project: http://github.com/njh/ruby-mqtt
* API Documentation: http://rubydoc.info/gems/mqtt/frames


License
-------

The ruby-mqtt gem is licensed under the terms of the MIT license.
See the file LICENSE for details.


Contact
-------

* Author:    Nicholas J Humfrey
* Email:     njh@aelius.com
* Home Page: http://www.aelius.com/njh/

MQTT Resources
=======

* Erlang mqtt broker: https://github.com/emqtt/emqtt
* MQTT Server List: http://mqtt.org/wiki/doku.php/brokers
* MQTT 相关学习
    * Message stream: http://www.blogjava.net/yongboy/archive/2014/02/15/409893.html
    * Protocol format: http://www.cnblogs.com/caca/p/mqtt.html
