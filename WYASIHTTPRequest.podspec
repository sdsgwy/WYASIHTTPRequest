
Pod::Spec.new do |s|
  s.name             = "WYASIHTTPRequest"
  s.version          = "0.0.1"
  s.summary          = "A short description of WYASIHTTPRequest."
  s.description      = <<-DESC
                       An optional longer description of WYASIHTTPRequest

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/sdsgwy/WYASIHTTPRequest"
  s.license          = 'MIT'
  s.author           = { "sdsgwy" => "sunshineyangzai@gmail.com" }
  s.source           = { :git => "https://github.com/sdsgwy/WYASIHTTPRequest.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = false

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'WYASIHTTPRequest' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.libraries = "z", "xml2"
  s.frameworks = 'CFNetwork', 'SystemConfiguration', 'MobileCoreServices', 'CoreGraphics'
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency 'AFNetworking', '~> 2.3'
end
