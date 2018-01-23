Pod::Spec.new do |s|
  s.name         = 'FawaidModels'
  s.version      = '0.1'
  s.summary      = 'FawaidModels'
  s.license      = 'MIT'
  s.homepage     = 'https://gitlab.com/fawaid/fawaid-models'
  s.author       = { 'Abdurahim Jauzee' => 'jauzee@mail.ru' }
  s.source       = { :git => 'git@gitlab.com:fawaid/fawaid-models.git', :tag => s.version.to_s }
  s.source_files  = 'Sources/**/*.swift'
end
