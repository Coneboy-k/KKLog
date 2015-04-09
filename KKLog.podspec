Pod::Spec.new do |s|
  s.name         = "KKLog"
  s.version      = "1.0.0"
  s.license      = { :type => 'BSD' }
  s.homepage     = "http://coneboy.com"
  s.summary      = "KKLog is an Objective-C library for iOS developers."
  s.author		 = { "Coneboy_K" => "iconeboy@gmail.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/Coneboy-k/KKLog.git", :tag => "1.0.0" }
  s.source_files  = "KKLog", "KKLog/KKLog/KKLog/KKLog.{h,m}"
  s.requires_arc = true
end
