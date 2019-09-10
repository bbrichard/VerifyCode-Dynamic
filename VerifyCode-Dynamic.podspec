
Pod::Spec.new do |spec|
  spec.name         = "VerifyCode-Dynamic"
  spec.version      = "1.0.8"
  spec.summary      = "VerifyCode-Dynamic for components"
  spec.description  = <<-DESC
                      VerifyCode-Dynamic  for components
                      DESC
  spec.homepage     = "https://github.com/bbrichard/VerifyCode-Dynamic"
  spec.license      = "MIT. Copyright (c) 2019年 BB. All rights reserved."
  spec.author       = { "Richard" => "Richard@seektopser.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"

  spec.source = { :http  => 'https://raw.githubusercontent.com/bbrichard/VerifyCode-Dynamic/master/Products/VerifyCode_Dynamic.framework-v1.0.8.zip' }
  #spec.source   = { :git => 'https://github.com/bbrichard/VerifyCode-Dynamic.git', :tag => spec.version }
  #spec.source_files = 'VerifyCode-Dynamic/Products/VerifyCode_Dynamic.framework'
  #spec.dependency   'VerifyCode', '=3.1.3 '

  spec.default_subspec = 'zip'
  spec.subspec 'zip' do |zip|
      puts '-------------------------------------------------------------------'
      puts 'Notice: VerifyCode-Dynamic is zip now'
      puts '-------------------------------------------------------------------'
      zip.ios.vendored_frameworks = '*.framework'
  end
end
