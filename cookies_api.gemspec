Gem::Specification.new do |s|
  s.name = 'cookies_api'
  s.version = '1.0.0'
  s.summary = 'cookies_api'
  s.description = 'Main Cookies application API, which provides endpoints for developers working with Cookies. Fetch canonical records relating to brands, stores, and strains.'
  s.authors = ['Eng@Cookies']
  s.email = 'engineering@cookiescalifornia.com'
  s.homepage = 'https://cookies.dev'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.3')
  s.add_dependency('faraday', '~> 1.0', '>= 1.0.1')
  s.add_dependency('faraday_middleware', '~> 1.0')
  s.add_dependency('certifi', '~> 2018.1', '>= 2018.01.18')
  s.add_dependency('faraday-http-cache', '~> 2.2')
  s.required_ruby_version = ['>= 2.5', '< 3.0']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
