Pod::Spec.new do |spec|

  spec.name         = "MyPod"
  spec.version      = "1.0.0"
  spec.summary      = "module"
  spec.license      = "MIT"
  spec.homepage     = "https://wiki/mobile/"
  spec.author       = { "MT " => "dev@team.ru" }
  spec.source = { :http => "https://proxy.sandbox.com" , :type => :zip }

  spec.platform     = :ios, '13.0'
  spec.swift_version = '5.0'

  spec.source_files = 'func.swift'

  spec.subspec 'SubspecOne' do |ss|
    ss.source_files = 'SubspecOne.swift'
  end

  spec.subspec 'SubspecTwo' do |ss|
    ss.source_files = 'SubspecTwo.swift'
  end

  spec.subspec 'SubspecThree' do |ss|
    ss.source_files = 'SubspecThree.swift'
  end
end

