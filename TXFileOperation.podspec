Pod::Spec.new do |s|
  s.name         = 'TXFileOperation'
  s.version      = '1.0'
  s.summary      = 'iOS文件(夹)快速简单完成增、删、改、查、写系列文件操作'
  s.description  = <<-DESC
			iOS文件(夹)快速简单完成增、删、改、查、写.快速精确计算文件夹大小、文件大小系列文件操作.
                   DESC
  s.homepage     = 'https://github.com/xtzPioneer/TXFileOperation'
  s.license      = 'MIT'
  s.author       = { 'zhangxiong' => 'xtz_pioneer@163.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/xtzPioneer/TXFileOperation.git', :tag => s.version.to_s }
  s.source_files = 'TXFileOperation/**/*.{h,m}'
  s.requires_arc = true  
end