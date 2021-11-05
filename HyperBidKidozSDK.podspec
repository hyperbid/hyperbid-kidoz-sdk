Pod::Spec.new do |s|
  s.name             = 'HyperBidKidozSDK'
  s.version          = '1.3.6'
  s.summary          = 'HyperBidKidozSDK'
  s.description      = <<-DESC
      HyperBidKidozSDK,HyperBidKidozSDK,Kidoz
                       DESC
  s.homepage         = 'https://github.com/hyperbid/hyperbid-kidoz-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HyperBid' => 'ios' }
  s.source           = { :git => 'https://github.com/hyperbid/hyperbid-kidoz-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.requires_arc = true

  s.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'

  s.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}

  s.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64' }
  s.source_files  = "Kidoz/lib/*.h"
  s.vendored_library = 'Kidoz/lib/libKidozSDK.a'

end
