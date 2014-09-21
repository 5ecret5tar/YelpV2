#
#  Be sure to run `pod spec lint YelpV2.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "YelpV2"
  s.version      = "0.0.1"
  s.summary      = "A short description of YelpV2."
  s.description  = <<-DESC
                    Getting started with the Yelp API is easy as pie. Or even as easy as doing a Yelp search for pie. The documentation below is your roadmap to get started. Gain easy access to search results and local business information from over 50 million businesses in 27 countries. That’s a lot of pie, so we hope you saved room.

                    By using the Yelp API you’ll be able to:

                    Find up to 40 best results for a geographically-oriented search
                    Sort results by the best match for the query, highest ratings, or distance
                    Limit results to those businesses offering a Yelp Deal, and display information about the deal like the title, savings, and purchase URL
                    Identify and display whether a business has been claimed on Yelp.com
                    The API uses a standard, secure authorization protocol (OAuth 1.0a, xAuth) for authenticating requests and offers various API methods.

                    This overview covers API methods and responses for both the Search and Business API, authentication, and code samples.
                   DESC

  s.homepage     = "http://www.yelp.com/developers/documentation"
  s.license      = "MIT"
  s.author             = { "Pawel Gieniec" => "pawel@5ecret5tar.com" }
  s.platform     = :ios
  s.platform     = :ios, "6.0"
  s.source       = { :git => "http://github.com/5ecret5tar/YelpV2.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  s.dependency "AF2OAuth1Client", "~> 0.3"

end
