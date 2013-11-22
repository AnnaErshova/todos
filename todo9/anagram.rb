class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(string)
		string_array = string.split(" ").to_a
		string_array.each |word|
			word.sort
			array = []
		array
	end
end


  it 'should detect no matches' do
	detector = Anagram.new('diaper')
	detector.match(%w(hello world zombies pants)).should eq([])
  end

  it 'should detect a simple anagram' do
	detector = Anagram.new('ba')
	anagrams = detector.match(['ab', 'abc', 'bac'])
	anagrams.should eq(['ab'])
  end

  it 'should detect an anagram' do
	detector = Anagram.new('listen')
	anagrams = detector.match %w(enlists google inlets banana)
	anagrams.should eq(['inlets'])
  end

  it 'should detect multiple anagrams' do
	detector = Anagram.new('allergy')
	anagrams = detector.match %w(gallery ballerina regally clergy largely leading)
	anagrams.should eq(['gallery', 'regally', 'largely'])
  end
end