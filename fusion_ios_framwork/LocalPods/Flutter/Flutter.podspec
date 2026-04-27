Pod::Spec.new do |s|
  s.name = 'Flutter'
  s.version = '1.0.0'
  s.summary = 'Prebuilt Flutter engine framework'
  s.description = 'Prebuilt Flutter xcframework for host integration.'
  s.homepage = 'https://local.invalid/flutter'
  s.license = { :type => 'MIT', :text => 'Local integration only' }
  s.author = { 'local' => 'local@example.com' }
  s.platform = :ios, '13.0'
  s.source = { :path => '.' }
  s.vendored_frameworks = '../../../fusion_ios_module/Framework/Flutter.xcframework'
end
