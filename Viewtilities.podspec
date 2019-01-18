#
# Be sure to run `pod lib lint Viewtilities.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Viewtilities'
  s.version          = '0.1.0'
  s.summary          = 'A collection of useful UIView utilities.'
  s.ios.deployment_target = '11.0'

  s.description      = <<-DESC
  A collection of useful UIView utilities. These utility methods are meant to speed up
  your workflow by abstracting common extension methods into a library.
                       DESC

  s.homepage         = 'https://github.com/gtokman/Viewtilities'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gtokman' => 'hello@garytokman.me' }
  s.source           = { :git => 'https://github.com/gtokman/Viewtilities.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/bestgaryever'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Viewtilities/**/*.{swift}'
  s.frameworks = 'UIKit'
  s.swift_version = "4.2"
end
