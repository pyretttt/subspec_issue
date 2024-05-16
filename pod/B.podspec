Pod::Spec.new do |spec|

  spec.name         = "B"
  spec.version      = "1.0.0"
  spec.summary      = "module"
  spec.license      = "MIT"
  spec.homepage     = "https://wiki/mobile/"
  spec.author       = { "MT " => "dev@team.ru" }
  spec.source = { :http => "https://proxy.sandbox.com" , :type => :zip }

  spec.platform     = :ios, '13.0'
  spec.swift_version = '5.0'

  spec.platform     = :ios, '13.0'
  spec.swift_version = '5.0'
  spec.dependency 'MyPod/SubspecTwo'

  spec.dependency 'Resource/RegularItalic'
  spec.dependency 'Resource/Medium'
end

