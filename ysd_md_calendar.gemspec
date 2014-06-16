Gem::Specification.new do |s|
  s.name    = "ysd_md_calendar"
  s.version = "0.2.0"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2013-06-16"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb']
  s.summary = "Yurak Sisa Calendar model"
  s.homepage = "http://github.com/yuraksisa/ysd_md_calendar"  
  
  s.add_runtime_dependency "data_mapper", "1.2.0"
  
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "dm-sqlite-adapter" # Model testing using sqlite

end
