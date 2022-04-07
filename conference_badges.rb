# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
  array_of_names.map { |name| badge_maker(name) }
end

def assign_rooms(array_of_names)
  array_of_names.map.with_index do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(array_of_names)
  array_of_messages = batch_badge_creator(array_of_names)
  array_of_messages.each { |message| puts message }

  array_of_room_assignments = assign_rooms(array_of_names)
  array_of_room_assignments.each { |assignment| puts assignment }
end
