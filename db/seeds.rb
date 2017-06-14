require_relative('../models/student')
require_relative('../models/house')
require("pry")

Student.delete_all()
House.delete_all()
house1 = House.new({
  "house_name" => "Gryffindor",
  "logo" => "images/Gryf_logo.jpeg"
  })

house2 = House.new({
  "house_name" => "Hufflepuff",
  "logo" => "images/Huff_logo.jpeg"
  })

house3 = House.new({
  "house_name" => "Ravenclaw",
  "logo" => "images/Raven_logo.jpeg"
  })

house4 = House.new({
  "house_name" => "Slytherin",
  "logo" => "images/Slyth_logo.jpeg"
  })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
  "first_name" => "Alan",
  "last_name" => "White",
  "house_id" => house2.id,
  "age" => 49
  })

student2 = Student.new({
  "first_name" => "James",
  "last_name" => "Cox",
  "house_id" => house3.id,
  "age" => 24
  })

student1.save()
student2.save()


binding.pry
nil
