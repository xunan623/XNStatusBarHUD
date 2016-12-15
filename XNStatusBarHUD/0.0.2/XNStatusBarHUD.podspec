

Pod::Spec.new do |s|
  s.name         = "XNStatusBarHUD"
  s.version      = "0.0.2"
  s.summary      = "状态栏HUD"
  s.description  = "封装一个微博一样的loading框"

  s.homepage     = "https://github.com/xunan623/XNStatusBarHUD"
  s.license      = "MIT"
  s.author             = { "xunan623" => "xunan623@outlook.com" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xunan623/XNStatusBarHUD.git", :tag => '0.0.2' }
  s.requires_arc = true

  s.source_files  = "XNStatusBarHUD/**/*.{h,m}"
  s.resource  = "XNStatusBarHUD/XNStatusBarHUD.bundle/*.png"

end
