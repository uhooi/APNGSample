Pod::Spec.new do |s|

  s.name         = "APNGKit"
  s.version      = "1.1.3"
  s.summary      = "High performance and delightful way to play with APNG format in iOS."

  s.description  = <<-DESC
                    APNGKit is a high performance framework for loading and displaying APNG images in iOS. It's built on top of a [modified version of libpng](https://github.com/onevcat/libpng) with APNG support and written in Swift. High-level abstractions of Cocoa Touch is used for a delightful API. Since that, you will feel at home and joy when using APNGKit to play with images in APNG format.
                   DESC

  s.homepage     = "https://github.com/onevcat/APNGKit"
  s.screenshots  = "https://raw.githubusercontent.com/onevcat/APNGKit/master/images/logo.png"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.authors            = { "onevcat" => "onevcat@gmail.com" }
  s.social_media_url   = "http://twitter.com/onevcat"

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.source       = { :git => "https://github.com/onevcat/APNGKit.git", :tag => s.version }
  
  s.source_files  = "APNGKit/*.{h,swift}", "APNGKit/libpng-apng/*.{h,c,S}"
  s.public_header_files = ["APNGKit/APNGKit.h", "APNGKit/libpng-apng/include/png.h", "APNGKit/libpng-apng/include/pnglibconf.h", "APNGKit/libpng-apng/include/pngconf.h"]
  s.library   = "z"
  s.swift_versions = ["4.2"]
end
