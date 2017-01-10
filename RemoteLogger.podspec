Pod::Spec.new do |s|

  s.name         = "RemoteLogger"
  s.version      = "0.0.1"
  s.summary      = "Real time log in remote"

  s.description  = <<-DESC
                   Real time log in remote .
                   DESC

  s.homepage     = "https://github.com/yourtion/RemoteLogger-OC"
  s.license      = "MIT"
  s.author       = { "Yourtion" => "yourtion@gmail.com" }
  s.source       = { :git => "https://github.com/yourtion/RemoteLogger-OC.git", :tag => s.version }
  s.source_files  = "RemoteLogger"
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  # s.osx.deployment_target = '10.9'
  # s.watchos.deployment_target = '2.0'
  # s.tvos.deployment_target = '9.0'

end
