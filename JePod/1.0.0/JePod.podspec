Pod::Spec.new do |s|
  s.name             = 'JePod'
  s.version          = '1.0.0'
  s.summary          = 'H'
  s.description      = 'S'

  s.homepage         = 'gitgitgit'
  s.license          = 'UNLICENSED'
  s.author           = { 'simpleway' => 'simpleway@simple-way.jp' }
  s.source           = { :git => 'git@github.com:JeSimpleWay/JePod.git', :tag => 'fr' + s.version.to_s }
  s.swift_version = '4.0'
  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Core'

  s.dependency 'PromiseKit', '~> 6.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Core/Sources/**/*'
  end

  s.subspec 'API' do |ss|
    ss.source_files = 'API/Sources/**/*'
    ss.dependency 'JePod/Core'
  end

end

