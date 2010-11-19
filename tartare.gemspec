Gem::Specification.new do |s|
  s.name = 'tartare'
  s.version = '1.0.0'
  s.author = 'Francesc Esplugas'
  s.email = 'contact@francescesplugas.com'
  s.summary = 'tartare'

  s.add_dependency('rails', '>= 3.0.0')
  s.add_dependency('capybara')

  s.files = Dir['lib/**/*']
  s.require_path = 'lib'
end
