require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name                   = 'RNPhotoEditor'
  s.version                = package['version']
  s.summary                = package['description']
  s.description            = package['description']
  s.homepage               = package['homepage']
  s.license                = package['license']
  s.author                 = package['author']
  s.source                 = { :git => 'https://github.com/catenda/react-native-photo-editor.git', :tag => s.version }

  s.platform               = :ios, '9.0'
  s.ios.deployment_target  = '9.0'
  s.swift_version          = '4.2'

  s.preserve_paths         = 'LICENSE', 'package.json'
  s.source_files           = 'RNPhotoEditor/**/*.{swift,h,m}'
  s.resources              = 'RNPhotoEditor/**/*.{png,jpeg,jpg,storyboard,xib,ttf}'
  s.dependency             'React'
end
