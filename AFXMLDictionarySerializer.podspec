Pod::Spec.new do |s|
  s.name         = "AFXMLDictionarySerializer"
  s.version      = "0.0.1"
  s.summary      = "Support for converting XML do NSDictionary in AFNetworking."

  s.description  = <<-DESC
                   A longer description of AFXMLDictionarySerializer in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/ideaismobile/AFXMLDictionarySerializer"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  
  s.author       = { "ideaismobile" => "thiago.peres@ideais.com.br" }
  
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/ideaismobile/AFXMLDictionarySerializer.git", :tag => "0.0.1" }

  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'

  # s.public_header_files = 'Classes/**/*.h'
  s.dependency 'AFNetworking', '>= 2.0'
  s.dependency 'XMLDictionary'
  s.requires_arc = true
end
