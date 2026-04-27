Pod::Spec.new do |s|
  s.name = 'FlutterPluginRegistrant'
  s.version = '1.0.0'
  s.summary = 'Prebuilt Flutter plugin registrant'
  s.description = 'Prebuilt FlutterPluginRegistrant xcframework for host integration.'
  s.homepage = 'https://local.invalid/flutter-plugin-registrant'
  s.license = { :type => 'MIT', :text => 'Local integration only' }
  s.author = { 'local' => 'local@example.com' }
  s.platform = :ios, '13.0'
  s.source = { :path => '.' }
  s.dependency 'Flutter'
  s.vendored_frameworks = '../../../fusion_ios_module/Framework/FlutterPluginRegistrant.xcframework'
end
