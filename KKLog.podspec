Pod::Spec.new do |s|
  s.name         = "KKLog"
  s.version      = "1.0.0"
  s.summary      = "A short description of KKLog."

  s.description  = <<-DESC
                   A Open source Log System for OC
                   DESC

  s.homepage     = "http://coneboy.com"
  s.license      = "BSD"
  s.author             = { "Coneboy_K" => "iconeboy@gmail.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/Coneboy-k/KKLog.git", :tag => "1.0.0" }
  s.source_files  = "Classes", "Classes/KKLog/KKLog/KKLog/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
end
