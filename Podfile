source 'https://cdn.cocoapods.org/'

platform :ios, deployment_target: '13.0'
workspace './Aviasales iOS Apps.xcworkspace'
use_frameworks! :linkage => :static

install! 'cocoapods',
        share_schemes_for_development_pods: true,
        incremental_installation: true,
        generate_multiple_pod_projects: true

target 'frameworkTest' do
    pod 'Neon', git: 'https://github.com/KosyanMedia/Neon.git', commit: '3770df30ee072a728becb8f1f6b7c29276a3dab4'

    target 'frameworkTestTests' do
      inherit! :search_paths
    end

    target 'frameworkTestUITests' do
    end

end
