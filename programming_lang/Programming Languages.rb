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
			new_language_hash[lang_name] = {}
		end
		new_language_hash[lang_name][:style] = []
		new_language_hash[lang_name][:style] << style
	end
end

new_language_hash

languages.each do |style, lang_hash|
	lang_hash.each do |lang_name, attribute_hash|
		attribute_hash.each_pair do |type, interp_or_compliled|
			if language_attributes[language][attribute].nil?
				language_attributes[language][attribute] = interp_or_compliled
			end
		end
	end
end

new_language_hash













