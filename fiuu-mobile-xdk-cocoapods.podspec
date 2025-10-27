#
# Be sure to run `pod lib lint rms-mobile-xdk-cocoapods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'fiuu-mobile-xdk-cocoapods'
  s.version          = '3.34.7'
  s.summary          = 'Fiuu Mobile XDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Fiuu mobile payment for iOS (Cocoapods Framework)'

  s.homepage         = 'https://github.com/FiuuPayment/Mobile-XDK-Fiuu_Cocoapods_Framework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fiuu Mobile Team' => 'mobile@fiuu.com' }
  s.source           = { :git => 'https://github.com/FiuuPayment/Mobile-XDK-Fiuu_Cocoapods_Framework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '16.0'
  s.requires_arc = true

  s.source_files = 'fiuu-mobile-xdk-cocoapods/Classes/**/*.{h,m}'
  s.public_header_files = 'fiuu-mobile-xdk-cocoapods/Classes/**/*.h'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  s.swift_version = '5.0'
  # s.resource_bundles = {
  #   'rms-mobile-xdk-cocoapods' => ['rms-mobile-xdk-cocoapods/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.resource = 'MOLPayXDK.bundle'
  s.vendored_frameworks = 'MOLPayXDK.framework'
  
end
