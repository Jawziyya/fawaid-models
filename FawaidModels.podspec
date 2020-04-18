Pod::Spec.new do |s|
  s.name         = 'FawaidModels'
  s.version      = '0.1.11'
  s.summary      = 'FawaidModels'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/jawziyya/fawaid-models'
  s.author       = { 'Abdurahim Jauzee' => 'jauzee@mail.ru' }
  s.source       = { :git => 'https://github.com/jawziyya/fawaid-models.git', :tag => s.version.to_s }
  s.source_files  = 'Sources/**/*.swift'
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
end
