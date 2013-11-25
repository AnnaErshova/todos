# 1. 
	array = ["Blake","Ashley","Jeff"]
	# a. Add a element to an array
	array << "Katie"
	# b. Write a statement to print out all the elements of the array. This should *not be* just `puts my_hash` but should iterate over the structure printing each value.
	array.each {|name| puts name }
	# c. Return the value at index 1.
	put array[1]
	# d. Return the index for the value "Jeff".
	array.rindex("Jeff")
		#from Ruby Array Docs

#2.
	instructor = {:name=>"Ashley", :age=>27}
	# a. Add a new key for location and give it the value "NYC".
	instructor[:location] = "NYC"
	# b. Write a statement to print out all the key/value pairs in the hash. This should *not be* just `puts my_hash` but should iterate over the structure printing each individual key and value.
	instructor.each { |key, value| puts "#{key}: #{value}"}
	# c. Return the name value from the hash.
	instructor[:name]
	# d. Return the key name for the value 27.
	instructor.key(27)
		#from Ruby Hash Docs

#3.
	school = { 
	  :name => "Happy Funtime School",
	  :location => "NYC",
	  :instructors => [ 
	    {:name=>"Blake", :subject=>"being awesome" },
	    {:name=>"Ashley", :subject=>"being better than blake"},
	    {:name=>"Jeff", :subject=>"karaoke"}
	  ],
	  :students => [ 
	    {:name => "Marissa", :grade => "B"},
	    {:name=>"Billy", :grade => "F"},
	    {:name => "Frank", :grade => "A"},
	    {:name => "Sophie", :grade => "C"}
	  ]
	}
	# a. Add a key to the school hash called "founded_in" and set it to the value 2013. 
	school[:founded_in] = 2013
	# b. Add a student to the school's students' array.
	school[:students] << {:name => "Katie", :grade => "B"}
	# c. Remove "Billy" from the students' array. Create a solution that would work for any name given, then give it the name `"Billy"`.
	school[:students].reject{|s|s[:name] == "name"} # note: this will return the hash for which :name == "name" but you can bang it out or make a new variable
	school[:students].reject{|s|s[:name] == "Billy"}
	# d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
	school[:students].each do |hash|
		hash[:semester] = "Summer"
	end
	# e. Change Ashley's subject to "being almost better than Blake". Create a solution that would work for any teacher given, then give it the teacher `"Ashley"`.
	school[:instructors].select{|i|i[:name]=="name"}.each{|i|i[:subject]="new subject"}
	school[:instructors].select{|i|i[:name]=="Ashley"}.each{|i|i[:subject]="being almost better than Blake"}
	# # # # # # # # # # # O R # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
	ashley = school[:instructors].select do|hash|
		hash[:name]=="Ashley"}
	end
	ashley.each do |hash|
		hash[:subject] = "being almost better than Blake"
	end
	# f. Change Frank's grade from "A" to "F". Create a solution that would work for any intial and replacement grade given, then give it the grades and `"A"` and `"F"`.
	school[:students].select{|s|s[:name]=="name"}.each{|s|s[:grade]="grade"}
	school[:students].select{|s|s[:name]=="Frank"}.each{|s|s[:grade]="F"}
	# g. Return the name of the student with a "B". Create a solution that would work for any grade given, then give it the grade `"B"`.
	school[:students].select{|s|s[:grade]=="grade"}.collect{|s|s[:name]}.join
	school[:students].select{|s|s[:grade]=="B"}.collect{|s|s[:name]}.join
	# h. Return the subject of the instructor "Jeff". Create a solution that would work for any instructor given, then give it the instructor `"Jeff"` and the new subject.
	school[:instructors].select{|i|i[:name]=="name"}.collect{|i|i[:subject]}.join
	school[:instructors].select{|i|i[:name]=="Jeff"}.collect{|i|i[:subject]}.join
	# i. Write a statement to print out all the values in the school. This should *not be* just `puts my_hash` but should iterate over the structure printing each individual key and value.
	school.each{|key,value|(key==:name||key ==:location||key==:founded_in) ? (puts"#{key}: #{value}"):(nil)}
	school[:instructors].each do |i_hash|
		#instructors is an array
		i_hash.each do |key, value|
			#{:name=>"Blake", :subject=>"being awesome" },
			puts "Instructors - #{key}: #{value}"
		end
	end
	school[:students].each do |s_hash|
		#students is an array
		s_hash.each do |key, value|
			#{:name => "Marissa", :grade => "B"}
			puts "Students - #{key}: #{value}"
		end
	end
#4. 	
	Flatiron = { 
	  :name => "Happy Funtime School",
	  :location => "NYC",
	  :instructors => [ 
	    {:name=>"Blake", :subject=>"being awesome" },
	    {:name=>"Ashley", :subject=>"being better than blake"},
	    {:name=>"Jeff", :subject=>"karaoke"}
	  ],
	  :students => [ 
	    {:name => "Marissa", :grade => "B"},
	    {:name=>"Billy", :grade => "F"},
	    {:name => "Frank", :grade => "A"},
	    {:name => "Sophie", :grade => "C"}
	  ]
	}
	# a.i. Create a method to return the grade of a student, given that student's name.
	def get_grade(school, name)
		school[:students].select{|s|s[:name]==name}.collect{|s|s[:grade]}.join
	end
		# this method is similar to but cannot replace any of the sections of question 3 as it asks for the reverse
	# b. i.Create a method to udpate a instructor's subject given the instructor and the new subject.
	def update_subject(school, name, subject)
		school[:instructors].select{|i|i[:name]==name}.each{|i|i[:subject]=subject}
	end
	# b. ii. Then use it to update Blake's subject to "being terrible".
	update_subject(Flatiron, "Blake", "being terrible")
	# c. i. Create a method to add a new student to the schools student array.
	def add_student(school, name, grade)
		school[:students] << {:name => name, :grade => grade}
	end
	# c. ii. Then use it to add yourself to the school students array.
	add_student(Flatiron, "Katie", "B")
	# d. i. Create a method that adds a new key at the top level of the school hash, given a key and a value. 
	def add_top_level_key(school, key, value)
		school[key] = value
	end
	# d. ii. Then use it to add a "Ranking" key with the value 1.
	add_top_level_key(Flatiron, :ranking, "1")

#5. 
	class School
		attr_accessor :name, :location, :instructors, :students
		attr_reader :ranking
		SCHOOLS = []

		def initialize(name, location, instructors, students, ranking)
			@name = name
			@location = location
			@instructors = instructors
			@students = students
			@ranking = ranking
		end

		def set_ranking(ranking)
			@ranking = ranking
		end

		def add_student(name, grade, semester)
			# @students << {:name=>name, :grade=>grade, :semester=>semester}
			# @students << (name, grade, semester}
			@students <<  Student.new(name, grade, semester)
		end

		def remove_student(name)
			@students.reject{|s|s[:name] == name}
		end

		def reset
			SCHOOLS.slice!(0..-1)
			SCHOOLS 
		end

		def more_info(name)
			@students.find{|s|s.name == name}
			# .find from ruby docs
		end
	end

#6.
	class Student
		attr_accessor :name, :grade, :semester
		def initialize(name, grade, semester)
			@name = name
			@grade = grade
			@semester = semester
		end
	end	

#7. a) Puts "hello", called the definition from the class so that got printed. Will also put "self" but I donno what that will look like.
#   b) Puts "Student", the name of the class. Called method that printed self, which in this case is Student.
#   c) It shouldn't puts or print anything, it should just generate an instance of the class as .new calls on the initialize method
#   d) See c). This time the method was called outside of the class
#   e) Puts "goodbye" b/c you're calling on the say_hello method, which calls on the say_goodbye, which returns goodbye, which is printed by say_hello



























