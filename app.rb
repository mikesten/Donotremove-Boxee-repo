#!/usr/bin/ruby

require 'rubygems'
require 'sinatra'

get "/" do
  "Mike's Boxee Repo"
end

get "/repository.xml" do
  content_type :xml
  "<repository>
     <id>com.mike</id>
     <url>http://youtube-to-boxee.heroku.com</url>
     <name>Mike's Temporary Repo</name>
     <thumb>http://dir.boxeehq.com/thumb.png</thumb>
     <description>Temporary repo to test out the 4oD app.</description>
  </repository>
  "
end

get "/index.xml" do
  content_type :xml
  "<apps>
     <app>
       <id>com.mike.4od-on-youtube</id>
       <name>4OD</name>
       <version>0.1</version>
       <description>4oD Documentaries on YouTube</description>
       <thumb>http://youtube-to-boxee.heroku.com/4od.png</thumb>
       <repositoryid>com.mike</repositoryid>
       <repository>http://youtube-to-boxee.heroku.com</repository>
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