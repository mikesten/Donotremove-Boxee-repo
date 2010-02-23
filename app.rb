#!/usr/bin/ruby

require 'rubygems'
require 'sinatra'

get "/" do
  content_type :text
  "Mike's Boxee Repo\nAll that's here is my 4oD hack. Add this url (#{request.url}) to your repositories under Apps > Extras in Boxee if you want to try it out."
end

get "/repository.xml" do
  content_type :xml
  "<repository>
     <id>com.donotremove</id>
     <url>http://boxee.donotremove.co.uk</url>
     <name>Mike's Boxee Repo</name>
     <thumb>http://dir.boxeehq.com/thumb.png</thumb>
     <description>Temporary repo to test out the 4oD app.</description>
  </repository>
  "
end

get "/index.xml" do
  content_type :xml
  "<apps>
     <app>
       <id>com.donotremove.4od-on-youtube</id>
       <name>4oD</name>
       <version>0.1</version>
       <description>4oD on YouTube.</description>
       <thumb>http://boxee.donotremove.co.uk/4od.png</thumb>
       <repositoryid>com.donotremove</repositoryid>
       <repository>http://boxee.donotremove.co.uk</repository>
       <media>video</media>
       <copyright>Probably Channel 4</copyright>
       <email>mike@donotremove.co.uk</email>
       <type>skin</type>
       <startWindow>14000</startWindow>
       <platform>all</platform>
       <minversion>0.9.20</minversion>
     </app>
  </apps>
  "
end