Pod::Spec.new do |s|
  s.name = "TuyaSmartUtil"
  s.version = "3.20.2"
  s.summary = "A short description of #{s.name}."
  s.license = "none"
  s.authors = {"0x5e"=>"gaosen@tuya.com"}
  s.homepage = "https://tuya.com"
  s.source = { :http => "https://images.tuyacn.com/smart/app/package/sdk/ios/#{s.name}-#{s.version}.zip", :type => "zip" }

  s.static_framework = true
  
  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'ios/*.framework'
  s.ios.frameworks = 'CoreTelephony', 'Foundation', 'SystemConfiguration', 'UIKit'
  s.ios.resource = 'ios/*.framework/**/*.bundle'

  s.watchos.deployment_target = '2.0'
  s.watchos.vendored_frameworks = 'watchos/*.framework'
  s.watchos.resource = 'watchos/*.framework/**/*.bundle'
  
  s.watchos.frameworks = 'Foundation', 'WatchKit'

end
