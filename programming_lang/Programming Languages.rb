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

I would like you to reformat the nested structure to be of the following form

{
  :ruby => {
    :style => [:oo],
    :type => "interpreted"
  },
  :python => {
    :style => [:oo],
    :type => "interpreted"
  }
  etc etc
}