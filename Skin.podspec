#
# Be sure to run `pod lib lint Skin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Skin'
  s.version          = '1.2.0'
  s.summary          = '黑白皮肤颜色切换实现.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huzhaohao/Skin'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huzhaohao' => '1009681836@qq.com' }
  s.source           = { :git => 'https://github.com/huzhaohao/Skin.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  # s.social_media_url = 'https://twitter.com/社交网址<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'Skin/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Skin' => ['Skin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
