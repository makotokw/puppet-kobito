# encoding: utf-8
require 'rake'
require 'rexml/document'
require 'open-uri'

task :default => 'update_to_latest_version'

task :update_to_latest_version do

  doc = REXML::Document.new(open('http://kobito.qiita.com/appcast.xml'))
  item = REXML::XPath.match(doc, "(rss/channel/item)[last()]")
  exit if item.empty?

  puts item[0]

  v = item[0].get_text('title').value
  v = v.sub(/version\s/i, '')
  exit unless /^[\d\.]+$/ === v

  puts "KobitoApp Version #{v}"

  file_path = 'manifests/init.pp'
  file_content = File.read(file_path).gsub(/(version =) '([\d\.]+)'/, "\\1 '#{v}'")
  open(file_path, 'w') do |f|
    f.<< file_content
  end

end
