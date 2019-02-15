Pod::Spec.new do |s|
  s.name         = 'http-parser'
  s.version      = '2.0.9'
  s.summary      = 'http request/response parser for c'
  s.description  = 'http request/response parser for c'
  s.author       = 'Li Guangming'
  s.homepage     = 'https://github.com/nodejs/http-parser'
  s.documentation_url = 'https://github.com/nodejs/http-parser'
  s.license      = { :type => 'MIT', :file => 'http-parser/LICENSE-MIT' }
  s.source       = { :git => 'https://github.com/nodejs/http-parser.git', :tag => s.version.to_s }
  s.source_files = ['http-parser/http_parser.h',
                    'http-parser/http_parser.c', ]
  s.header_mappings_dir = 'http-parser'
  s.public_header_files = 'http-parser/*.h'
  s.prepare_command = <<-CMD
    if [ -d "http-parser" ]; then
      cd http-parser && git pull && cd -
    else
      git clone https://github.com/nodejs/http-parser.git --depth 1
    fi
CMD
  s.requires_arc = false
end
