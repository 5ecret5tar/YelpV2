#
#  Be sure to run `pod spec lint YelpV2.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "YelpV2"
  s.version      = "0.0.4"
  s.summary      = "An Objective-C client for the YelpV2 api"
  s.homepage     = "https://github.com/5ecret5tar/YelpV2.git"
  s.license      = "MIT"
  s.author             = { "Pawel Gieniec" => "pawel@5ecret5tar.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "git@github.com:5ecret5tar/YelpV2.git", :tag => "v0.0.4" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true
  s.dependency "AF2OAuth1Client", "~> 0.3"
end
