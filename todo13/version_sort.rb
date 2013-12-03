##################
## VERSION SORT ##
##################

def version_sort(array)
    new_array = array.collect {|s|s.slice!(4..-5)}
    #new_array.sort!
    #have: ["1", "1.10.2", "1.11",  "1.3",   "1.50",   "1.8.7", "1.9.3", "10", "10.1", "100", "13", "2.0", "2.0.0", "2.0.1", "2.007", "2.01", "2.012b", "2.01a", "2.0a", "2.0b", "2.1", "25", "6"]
    #want: ["1", "1.3"   , "1.8.7", "1.9.3", "1.10.2", "1.11"...]
    ###############################################################----------\
    sorta_a = []              # [1]                                          # first array
    ################################################################---------/
    new_array.each { |e| e == "1" ? sorta_a << e : nil}
    sortb_a = []
    new_array.each { |e| e != "1" && e[0] == "1" && e[1] == "." ? sortb_a << e : nil} 
    #sortb_a.sort
    #["1.10.2", "1.11", "1.3", "1.50", "1.8.7", "1.9.3"]
    sortc_a = sortb_a.collect {|s|s.slice!(2..-1)}
    sortd_a = []
    sortc_a.each {|e| sortd_a << e.to_f}
    sortd_a.sort!               
    #[3.0, 8.7, 9.3, 10.2, 11.0, 50.0]
    sortd_a.collect! {|e| e.to_s.insert(0, "1.")}
    ###############################################################----------\
    sortd_a   # ["1.3.0", "1.8.7", "1.9.3", "1.10.2", "1.11.0", "1.50.0"]    # second array
    ################################################################---------/
end


filenames = [
    "foo-1.10.2.ext",
    "foo-1.11.ext",
    "foo-1.3.ext",
    "foo-1.50.ext",
    "foo-1.8.7.ext",
    "foo-1.9.3.ext",
    "foo-1.ext",
    "foo-10.1.ext",
    "foo-10.ext",
    "foo-100.ext",
    "foo-13.ext",
    "foo-2.0.0.ext",
    "foo-2.0.1.ext",
    "foo-2.0.ext",
    "foo-2.007.ext",
    "foo-2.01.ext",
    "foo-2.012b.ext",
    "foo-2.01a.ext",
    "foo-2.0a.ext",
    "foo-2.0b.ext",
    "foo-2.1.ext",
    "foo-25.ext",
    "foo-6.ext",
    ]

puts version_sort(filenames).inspect