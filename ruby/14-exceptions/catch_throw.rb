#! /usr/bin/ruby -w

def prompt_get(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == '!'
  res
end

catch :quitRequested do
  name = prompt_get("Name:\t")
  age = prompt_get("Age:\t")
  sex = prompt_get("Sex:\t")
  print "#{name} is #{age} years old #{sex}\n"
end
prompt_get("Name:\t")
