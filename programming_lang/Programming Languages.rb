Organizing Nested Data

I have a collection of Programming Languages.  
languages = {
	:oo => {
		:ruby => {
			:type => "interpreted"
		},
		:javascript => {
			:type => "interpreted"
		},
		:python => {
			:type => "interpreted"
		},
		:java => {
			:type => "compiled"
		}
	},
	:functional => {
		:clojure => {
			:type => "compiled"
		},
		:erlang => {
			:type => "compiled"
		},
		:scala => {
			:type => "compiled"
		},
		:javascript => {
			:type => "interpreted"
		}

	}
}

# I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "interpreted"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "interpreted"
#   }
#   etc etc
# }

# languages.each_pair do |style, lang_1|
# 	lang_hash.each_pair do |lang_name, attribute_hash|
# 		hash_2.each_pair do |type, interp_or_compliled|

new_language_hash = {}

languages.each do |style, lang_hash|
	lang_hash.each do |lang_name, attribute_hash|
		if new_language_hash[lang_name].nil?
			#if the key language doesn't exist in new hash, so as to avoid overwriting
			new_language_hash[lang_name] = {} #initiate a new hash for the value of :ruby, :python, etc.
		end
		new_language_hash[lang_name][:style] = [] #creates a key called :style and associates it with an array
		new_language_hash[lang_name][:style] << style  #adds oo vs functional key from level one to the value of :style
	end
end

new_language_hash

languages.each do |style, lang_hash|
	lang_hash.each do |lang_name, attribute_hash|
		attribute_hash.each_pair do |type, interp_or_compliled|
			if new_language_hash[language][type].nil?
				#if the key type doesn't exist in new hash, so as to avoid overwriting
				new_language_hash[language][type] = interp_or_compliled
			end
		end
	end
end

new_language_hash













