Pod::Spec.new do |s|
  s.name         = "UIViewController+ODStatusBar"
  s.version      = "0.1.4"
  s.summary      = "A utility class for managing iOS status bar state."
  s.homepage     = "https://github.com/Rogaven/UIViewController-ODStatusBar"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Alexey Nazaroff" => "alexx.nazaroff@gmail.com" }
  s.source       = { :git => "https://github.com/Rogaven/UIViewController-ODStatusBar.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.source_files = 'src/**/*'
  s.requires_arc = true
end
