Pod::Spec.new do |s|
  s.name         = "RippleEffect"
  s.version      = "0.1.1"
  s.summary      = "Material Design “ink ripple” interaction effect written in iOS swift."
  s.description  = <<-DESC
           - You can use Material Design “ink ripple” interaction effect written in iOS swift
                   DESC
  s.homepage     = "https://github.com/manchan/RippleEffect"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Yuichi Matsuoka" => "anything12new14@gmail.com" }
  s.social_media_url   = "http://twitter.com/you_matz"
  s.platform     = :ios, "10.0"
  s.swift_version = '4.2'
  s.source       = { :git => "https://github.com/manchan/RippleEffect.git", :tag => s.version }
  s.source_files  = "RippleEffect/**/*.swift"
  s.requires_arc = true
end
