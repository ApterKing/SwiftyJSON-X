
Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = 'SwiftyJSON-X'
  s.version      = '1.0.1'
  s.summary      = 'Use SwiftyJSON transform Any JSON to Model, Model to JSON'

  s.homepage     = 'https://github.com/ApterKing/SwiftyJSON-X'

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => 'MIT', :file => 'LICENSE' }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { 'ApterKing' => 'wangcccong@outlook.com' }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, '8.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => 'https://github.com/ApterKing/SwiftyJSON-X.git', :tag => '#{s.version}' }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = 'SwiftyJSON-X/Classes/JSONMappable.swift'

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.framework  = 'Foundation'

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true

  s.dependency 'SwiftyJSON'

end
