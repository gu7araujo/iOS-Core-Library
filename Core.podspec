Pod::Spec.new do |spec|
  spec.name         = "Core"
  spec.version      = "1.0.0"
  spec.summary      = "Core Library"
  spec.description  = <<-DESC
  Commons files across the Application.
                   DESC
  spec.homepage     = "https://github.com/gu7araujo/iOS-Core-Library.git"
  spec.license      = "MIT"
  spec.author             = "Gustavo Araujo Santos"
  spec.swift_version = '5.9'
  spec.platform     = :ios
  spec.platform     = :ios, "17"
  spec.source       = { :git => "https://github.com/gu7araujo/iOS-Core-Library.git", :tag => "#{spec.version}" }
  spec.source_files  = "Core/**/*"
end
