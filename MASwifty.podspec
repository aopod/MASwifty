
Pod::Spec.new do |s|
  s.name             = 'MASwifty'
  s.version          = '1.0.0'
  s.summary          = 'Swifty Masonry'

  s.description      = <<-DESC
  Swifty way to use Masonry
                       DESC

  s.homepage         = 'https://github.com/aopod/MASwifty'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aopod' => 'aopodcom@gmail.com' }
  s.source           = { :git => 'https://github.com/aopod/MASwifty.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'

  s.source_files = 'MASwifty/Classes/**/*'

  s.frameworks = 'UIKit'
  s.dependency 'Masonry'
end
