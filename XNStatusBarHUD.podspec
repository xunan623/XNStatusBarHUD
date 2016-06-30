

Pod::Spec.new do |s|
  s.name         = "XNStatusBarHUD"
  s.version      = "0.0.1"
  s.summary      = "状态栏HUD"
  s.description  = <<-DESC

                   DESC

  s.homepage     = "https://github.com/xunan623/XNStatusBarHUD"
  s.license      = "MIT"
  s.author             = { "xunan623" => "xunan623@outlook.com" }

  # s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/xunan623/XNStatusBarHUD.git", :tag => s.version }

  s.source_files  = "XNStatusBarHUD/"
  s.exclude_files = "Classes/Exclude"


  s.resource  = "XNStatusBarHUD/XNStatusBarHUD.bundle/"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
