Pod::Spec.new do |s|
  s.name         = 'Cordova'
  s.version      = '5.0.1'

  s.summary      = 'Cordova iOS'
  s.description  = <<-EOS
    Apache Cordova is a platform for building native mobile applications using HTML, CSS and JavaScript.
  EOS

  s.requires_arc = true

  s.homepage     = 'https://github.com/apache/cordova-ios'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'The Adobe PhoneGap Team' => '' }
  s.source       = { :git => 'https://github.com/yapplabs/cordova-ios.git', :tag => "#{s.version}" }
  s.platform     = :ios
  s.source_files =  [
    "CordovaLib/Classes/Public/*.{h,m}",
    "CordovaLib/Classes/Private/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/*/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/CDVGestureHandler/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/CDVHandleOpenURL/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/CDVIntentAndNavigationFilter/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/CDVLocalStorage/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/CDVLogger/*.{h,m}",
    "CordovaLib/Classes/Private/Plugins/CDVUIWebViewEngine/*.{h,m}",
  ]
  s.preserve_paths = [
    "CordovaLib/cordova.js",
    "CordovaLib/VERSION"
  ]
  s.frameworks = [
    "AssetsLibrary",
    "MobileCoreServices",
    "AVFoundation",
    "CoreLocation"
  ]
end
