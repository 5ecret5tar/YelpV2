#
#  Be sure to run `pod spec lint YelpV2.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "YelpV2"
  s.version      = "0.0.1-lw"
  s.summary      = "A short description of YelpV2."
  s.description  = <<-DESC
                    Simple interface to using the YelpV2 API for iOS.
                   DESC

  s.homepage     = "http://www.yelp.com/developers/documentation"
  s.license      = "MIT"
  s.author             = { "Pawel Gieniec" => "pawel@5ecret5tar.com" }
  s.platform     = :ios
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/5ecret5tar/YelpV2.git", :tag => "0.0.1-lw" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  s.dependency "AF2OAuth1Client", "~> 0.3"

end
