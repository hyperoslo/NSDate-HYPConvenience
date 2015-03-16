Pod::Spec.new do |s|
  s.name             = "NSDate-HYPDate"
  s.summary          = "A short description of NSDate-HYPDate."
  s.version          = "0.1"
  s.homepage         = "https://github.com/hyperoslo/NSDate-HYPDate"
  s.license          = 'MIT'
  s.author           = { "Hyper AS" => "teknologi@hyper.no" }
  s.source           = { :git => "https://github.com/hyperoslo/NSDate-HYPDate.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyperoslo'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Source/**/*'

#  s.frameworks = 'UIKit', 'MapKit'
#  s.dependency 'AFNetworking', '~> 2.3'
end
