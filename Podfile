source 'https://github.com/CocoaPods/Specs.git'
platform:ios,'9.0'
use_frameworks!
inhibit_all_warnings!

target 'Octoswift' do
  pod 'ReactiveSwift', '1.0.0.alpha.2'
  pod 'OctoKit'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
