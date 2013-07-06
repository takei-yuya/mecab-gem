Gem::Specification.new do |s|
	s.name = %q{mecab}
	s.version = '0.98'
	s.author = 'Taku Kudo'
	s.date = '2009-09-27'
	s.description = <<-EOF
Ruby bindings for MeCab, a morphological analyzer.
	EOF
	s.email = 'taku@chasen.org'
	s.extensions = [ 'ext/extconf.rb' ]
  s.files         = `git ls-files`.split($/)
  s.files = Dir.glob('ext/**/*.{c,cpp,h,rb}')

	s.has_rdoc = false
	s.homepage = 'http://mecab.sourceforge.net/'
	s.summary = 'Ruby bindings for MeCab.'
end

