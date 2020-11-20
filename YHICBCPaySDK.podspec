#
# Be sure to run `pod lib lint YHICBCPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHICBCPaySDK'
  s.version          = '0.1.0'
  s.summary          = '工行e支付SDK副本'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description  = "工行e支付SDK，包含微信支付SDK、支付宝支付"


  s.homepage         = 'https://github.com/damianshou/YHICBCPaySDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'damianshou' => 'linya1991@qq.com' }
  s.source           = { :git => 'https://github.com/damianshou/YHICBCPaySDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHICBCPaySDK/Classes/**/*'
  
  s.requires_arc = true

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation'

  s.libraries        = 'z', 'c++', 'sqlite3'

  s.vendored_frameworks = ["Frameworks/ICBCPaySDK.framework"]
  
  s.resources    = 'Resources/ICBCPaySDK.bundle'

  s.dependency     'AlipaySDK-iOS'
      
  s.dependency     'WechatOpenSDK'

  s.dependency     'AFNetworking', '~> 3.0'

  s.dependency     'Toast', '3.0'

  s.dependency     'GTMBase64', '1.0.1'
  # s.resource_bundles = {
  #   'YHICBCPaySDK' => ['YHICBCPaySDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
