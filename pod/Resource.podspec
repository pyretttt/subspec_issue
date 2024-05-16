Pod::Spec.new do |spec|

  spec.name         = "Resource"
  spec.version      = "1.0.0"
  spec.summary      = "module"
  spec.license      = "MIT"
  spec.homepage     = "https://wiki/mobile/"
  spec.author       = { "MT " => "dev@team.ru" }
  spec.source = { :http => "https://proxy.sandbox.com" , :type => :zip }

  spec.platform     = :ios, '13.0'
  spec.swift_version = '5.0'

  spec.subspec 'Regular' do |sys|
    sys.resource_bundle = { 'Regular' => 'Lib/Fonts/Regular.ttf' }
  end

  spec.subspec 'Medium' do |sys|
    sys.resource_bundle = { 'Medium' => 'Lib/Fonts/Medium.ttf' }
  end

  spec.subspec 'RegularItalic' do |sys|
    sys.resource_bundle = { 'RegularItalic' => 'Lib/Fonts/RegularItalic.ttf' }
  end
end

