

Pod::Spec.new do |s|
  s.name         = "XNStatusBarHUD"
  s.version      = "0.0.1"
  s.summary      = "状态栏HUD"
  s.description  = <<-DESC

                   DESC

  s.homepage     = "https://github.com/xunan623/XNStatusBarHUD"
  s.license      = "MIT"
  s.author             = { "xunan623" => "xunan623@outlook.com" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xunan623/XNStatusBarHUD.git", :tag => s.version }

  s.source_files  = "XNStatusBarHUD"
  s.resource  = "XNStatusBarHUD/XNStatusBarHUD.bundle/*.png"

end
