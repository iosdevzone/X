Pod::Spec.new do |spec|
  spec.name = 'X'
  spec.version = '0.4.1'
  spec.authors = {'Sam Soffes' => 'sam@soff.es'}
  spec.homepage = 'https://github.com/soffes/X'
  spec.summary = 'Easier cross platform Mac and iOS development with Swift 4.'
  spec.source = {:git => 'https://github.com/soffes/X.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.ios.deployment_target = '8.0'
  spec.ios.frameworks = 'Foundation', 'UIKit'

  spec.osx.deployment_target = '10.9'
  spec.osx.frameworks = 'Foundation', 'AppKit'

  spec.source_files = 'Sources/*.{h,m,swift}'
end
