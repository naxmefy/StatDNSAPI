#
# Be sure to run `pod lib lint StatDNSAPI.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "StatDNSAPI"
  s.version          = "0.1.0"
  s.summary          = "API Wrapper for StatDNS."
  s.description      = <<-DESC
                       Get DNS-related information about a given hostname, domain or IP.
                       DESC
  s.homepage         = "https://github.com/Naxmeify/StatDNSAPI"
  # s.screenshots    = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "MRW Neundorf" => "matt@nax.me" }
  s.source           = { :git => "https://github.com/Naxmeify/StatDNSAPI.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Naxmeify'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'StatDNSAPI' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
