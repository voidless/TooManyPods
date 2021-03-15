#!/usr/bin/xcrun --sdk macosx swift

import Foundation

let modulesPath = "Modules"

(1..<300).forEach { index in

    let moduleName = "JRModule\(index)"

    let podspec = """
    Pod::Spec.new do |s|
      s.name             = '\(moduleName)'
      s.version          = '1.0'
      s.summary          = "#{s.name} - module for Aviasales"

      s.homepage         = 'https://aviasales.ru'
      s.license          = { type: 'Commercial', text: 'Aviasales Copyright 2019' }
      s.author           = { 'Aviasales' => 'aviasales.ru' }
      s.source           = { git: 'https://github.com/KosyanMedia/aviasales-ios.git', branch: 'master' }

      s.platform = :ios
      s.swift_version = '5.1'
      s.ios.deployment_target = '12.0'
      s.prefix_header_file = false

      s.ios.source_files = '**/*.{swift,m,h}'

      s.ios.resource_bundle = { "#{s.name}Resources" => ['**/*.{xib,png,json}', 'Resources/**/*'] }

      s.dependency 'Neon'
    end
    """

    let podspecPath = "\(modulesPath)/\(moduleName).podspec"

    try! podspec.write(toFile: podspecPath, atomically: true, encoding: .utf8)

}
