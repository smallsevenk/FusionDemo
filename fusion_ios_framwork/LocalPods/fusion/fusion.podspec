Pod::Spec.new do |s|
  s.name = 'fusion'
  s.version = '1.0.0'
  s.summary = 'Prebuilt fusion container framework'
  s.description = 'Prebuilt fusion xcframework for host integration.'
  s.homepage = 'https://local.invalid/fusion'
  s.license = { :type => 'MIT', :text => 'Local integration only' }
  s.author = { 'local' => 'local@example.com' }
  s.platform = :ios, '13.0'
  s.source = { :path => '.' }
  s.dependency 'Flutter'
  s.vendored_frameworks = '../../../fusion_ios_module/Framework/fusion.xcframework'
end
