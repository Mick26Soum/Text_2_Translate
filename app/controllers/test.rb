# encoding: utf-8
['openssl','bing_translator'].each {|x| require x}

translator = BingTranslator.new('RubyTranslate','b23Kbt0semubZJRHJz0sFH0yfns+plDk/F9gTza0GKs=')
chinese = translator.translate 'Hello, world', :from => 'en', :to => 'zh-CHT'
puts chinese