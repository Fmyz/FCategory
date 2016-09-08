#
#  Be sure to run `pod spec lint FCategory.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |s|

  s.name         = "FCategory"
  s.version      = "0.0.1"
  s.summary      = "Some Userful Categories"

  s.homepage     = "https://github.com/Fmyz/FCategory"

  s.license      = "MIT"

  s.author             = "Fmyz"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/Fmyz/FCategory", :tag => "#{s.version}" }

  s.source_files  = "Category/**/*.{h,m}"

  s.frameworks = "UIKit", "Foundation"

  s.dependency "MBProgressHUD", "~> 0.9"
  s.dependency "MJRefresh", "~> 3.1.12"
  s.dependency "SDWebImage", "~> 3.8.1"

end
