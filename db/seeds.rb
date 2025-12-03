# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#

# db/seeds/exercises_part1.rb
# Part 1: Chest & Back Exercises

puts "Seeding Chest Exercises..."

chest_exercises = [
  { name: "Barbell Bench Press", category: "Chest", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Incline Barbell Bench Press", category: "Chest", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Decline Barbell Bench Press", category: "Chest", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Bench Press", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Incline Dumbbell Bench Press", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Decline Dumbbell Bench Press", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Dumbbell Flyes", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Incline Dumbbell Flyes", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Decline Dumbbell Flyes", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Cable Flyes", category: "Chest", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Low Cable Flyes", category: "Chest", equipment: "Cable", difficulty: "Intermediate" },
  { name: "High Cable Flyes", category: "Chest", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Wide Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Diamond Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Decline Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Incline Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Archer Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Plyometric Push-Ups", category: "Chest", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Chest Dips", category: "Chest", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Machine Chest Press", category: "Chest", equipment: "Machine", difficulty: "Beginner" },
  { name: "Incline Machine Press", category: "Chest", equipment: "Machine", difficulty: "Beginner" },
  { name: "Pec Deck Machine", category: "Chest", equipment: "Machine", difficulty: "Beginner" },
  { name: "Smith Machine Bench Press", category: "Chest", equipment: "Machine", difficulty: "Beginner" },
  { name: "Incline Smith Machine Press", category: "Chest", equipment: "Machine", difficulty: "Beginner" },
  { name: "Landmine Press", category: "Chest", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Svend Press", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Pullover", category: "Chest", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Cable Pullover", category: "Chest", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Single Arm Cable Press", category: "Chest", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Resistance Band Chest Press", category: "Chest", equipment: "Bands", difficulty: "Beginner" },
  { name: "Resistance Band Flyes", category: "Chest", equipment: "Bands", difficulty: "Beginner" },
  { name: "Plate Press", category: "Chest", equipment: "Other", difficulty: "Beginner" },
  { name: "Floor Press", category: "Chest", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Floor Press", category: "Chest", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Close Grip Bench Press", category: "Chest", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Paused Bench Press", category: "Chest", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Spoto Press", category: "Chest", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Guillotine Press", category: "Chest", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Hex Press", category: "Chest", equipment: "Dumbbell", difficulty: "Intermediate" }
]

chest_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{chest_exercises.count} chest exercises created!"

puts "Seeding Back Exercises..."

back_exercises = [
  { name: "Barbell Row", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Bent Over Barbell Row", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Pendlay Row", category: "Back", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Underhand Barbell Row", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "T-Bar Row", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Meadows Row", category: "Back", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Deadlift", category: "Back", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Romanian Deadlift", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Sumo Deadlift", category: "Back", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Trap Bar Deadlift", category: "Back", equipment: "Other", difficulty: "Intermediate" },
  { name: "Deficit Deadlift", category: "Back", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Rack Pull", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Snatch Grip Deadlift", category: "Back", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Pull-Up", category: "Back", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Chin-Up", category: "Back", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Wide Grip Pull-Up", category: "Back", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Close Grip Pull-Up", category: "Back", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Neutral Grip Pull-Up", category: "Back", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Weighted Pull-Up", category: "Back", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Muscle Up", category: "Back", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Lat Pulldown", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Wide Grip Lat Pulldown", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Close Grip Lat Pulldown", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Underhand Lat Pulldown", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Single Arm Lat Pulldown", category: "Back", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Straight Arm Pulldown", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Dumbbell Row", category: "Back", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Bent Over Dumbbell Row", category: "Back", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Single Arm Dumbbell Row", category: "Back", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Chest Supported Dumbbell Row", category: "Back", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Kroc Row", category: "Back", equipment: "Dumbbell", difficulty: "Advanced" },
  { name: "Seal Row", category: "Back", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Inverted Row", category: "Back", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Cable Row", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Seated Cable Row", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Wide Grip Cable Row", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Close Grip Cable Row", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Single Arm Cable Row", category: "Back", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Face Pull", category: "Back", equipment: "Cable", difficulty: "Beginner" },
  { name: "Machine Row", category: "Back", equipment: "Machine", difficulty: "Beginner" },
  { name: "Chest Supported Row Machine", category: "Back", equipment: "Machine", difficulty: "Beginner" },
  { name: "Hammer Strength Row", category: "Back", equipment: "Machine", difficulty: "Beginner" },
  { name: "Smith Machine Row", category: "Back", equipment: "Machine", difficulty: "Beginner" },
  { name: "Hyperextension", category: "Back", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Reverse Hyperextension", category: "Back", equipment: "Machine", difficulty: "Intermediate" },
  { name: "Good Morning", category: "Back", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Back Extension", category: "Back", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Superman", category: "Back", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Resistance Band Row", category: "Back", equipment: "Bands", difficulty: "Beginner" },
  { name: "Resistance Band Pulldown", category: "Back", equipment: "Bands", difficulty: "Beginner" },
  { name: "Dumbbell Pullover", category: "Back", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Renegade Row", category: "Back", equipment: "Dumbbell", difficulty: "Advanced" },
  { name: "Gorilla Row", category: "Back", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Kettlebell Row", category: "Back", equipment: "Kettlebell", difficulty: "Beginner" }
]

back_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{back_exercises.count} back exercises created!"
puts "Part 1 complete: #{chest_exercises.count + back_exercises.count} total exercises"

shoulder_exercises = [
  { name: "Overhead Press", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Military Press", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Push Press", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Behind the Neck Press", category: "Shoulders", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Seated Barbell Press", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Shoulder Press", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Seated Dumbbell Press", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Arnold Press", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Single Arm Dumbbell Press", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Dumbbell Push Press", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Lateral Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Front Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Rear Delt Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Bent Over Lateral Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Cable Lateral Raise", category: "Shoulders", equipment: "Cable", difficulty: "Beginner" },
  { name: "Cable Front Raise", category: "Shoulders", equipment: "Cable", difficulty: "Beginner" },
  { name: "Cable Rear Delt Fly", category: "Shoulders", equipment: "Cable", difficulty: "Beginner" },
  { name: "Reverse Pec Deck", category: "Shoulders", equipment: "Machine", difficulty: "Beginner" },
  { name: "Machine Shoulder Press", category: "Shoulders", equipment: "Machine", difficulty: "Beginner" },
  { name: "Smith Machine Shoulder Press", category: "Shoulders", equipment: "Machine", difficulty: "Beginner" },
  { name: "Upright Row", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Upright Row", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Cable Upright Row", category: "Shoulders", equipment: "Cable", difficulty: "Beginner" },
  { name: "Barbell Shrug", category: "Shoulders", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Dumbbell Shrug", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Trap Bar Shrug", category: "Shoulders", equipment: "Other", difficulty: "Beginner" },
  { name: "Behind the Back Shrug", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Overhead Shrug", category: "Shoulders", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Cable Shrug", category: "Shoulders", equipment: "Cable", difficulty: "Beginner" },
  { name: "Face Pull", category: "Shoulders", equipment: "Cable", difficulty: "Beginner" },
  { name: "High Pull", category: "Shoulders", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Landmine Press", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Single Arm Landmine Press", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Landmine Lateral Raise", category: "Shoulders", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Pike Push-Up", category: "Shoulders", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Handstand Push-Up", category: "Shoulders", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Wall Walk", category: "Shoulders", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Y Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "W Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "L Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Cuban Press", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Lu Raise", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Bradford Press", category: "Shoulders", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Kettlebell Press", category: "Shoulders", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Double Kettlebell Press", category: "Shoulders", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Resistance Band Shoulder Press", category: "Shoulders", equipment: "Bands", difficulty: "Beginner" },
  { name: "Resistance Band Lateral Raise", category: "Shoulders", equipment: "Bands", difficulty: "Beginner" },
  { name: "Plate Front Raise", category: "Shoulders", equipment: "Other", difficulty: "Beginner" },
  { name: "Scarecrow", category: "Shoulders", equipment: "Dumbbell", difficulty: "Intermediate" }
]

shoulder_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{shoulder_exercises.count} shoulder exercises created!"

puts "Seeding Biceps Exercises..."

biceps_exercises = [
  { name: "Barbell Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "EZ Bar Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Close Grip Barbell Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Wide Grip Barbell Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Reverse Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Drag Curl", category: "Arms", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Preacher Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Spider Curl", category: "Arms", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Alternating Dumbbell Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Hammer Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Cross Body Hammer Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Incline Dumbbell Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Concentration Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Dumbbell Preacher Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Zottman Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Cable Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Cable Rope Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "High Cable Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Low Cable Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Single Arm Cable Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Cable Preacher Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Machine Curl", category: "Arms", equipment: "Machine", difficulty: "Beginner" },
  { name: "Chin-Up", category: "Arms", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Resistance Band Curl", category: "Arms", equipment: "Bands", difficulty: "Beginner" },
  { name: "21s", category: "Arms", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Bayesian Curl", category: "Arms", equipment: "Cable", difficulty: "Intermediate" },
  { name: "Waiter Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Intermediate" }
]

biceps_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{biceps_exercises.count} biceps exercises created!"

puts "Seeding Triceps Exercises..."

triceps_exercises = [
  { name: "Close Grip Bench Press", category: "Arms", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Lying Tricep Extension", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Skull Crusher", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "EZ Bar Skull Crusher", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Overhead Tricep Extension", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Dumbbell Tricep Extension", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Single Arm Overhead Extension", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Dumbbell Skull Crusher", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Tricep Kickback", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Tate Press", category: "Arms", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Tricep Dips", category: "Arms", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Bench Dips", category: "Arms", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Weighted Dips", category: "Arms", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Diamond Push-Up", category: "Arms", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Close Grip Push-Up", category: "Arms", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Cable Tricep Pushdown", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Rope Tricep Pushdown", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Straight Bar Pushdown", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "V-Bar Pushdown", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Reverse Grip Pushdown", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Single Arm Pushdown", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Overhead Cable Extension", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Cable Kickback", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "JM Press", category: "Arms", equipment: "Barbell", difficulty: "Advanced" },
  { name: "California Press", category: "Arms", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Resistance Band Tricep Extension", category: "Arms", equipment: "Bands", difficulty: "Beginner" },
  { name: "Resistance Band Pushdown", category: "Arms", equipment: "Bands", difficulty: "Beginner" },
  { name: "Machine Tricep Extension", category: "Arms", equipment: "Machine", difficulty: "Beginner" },
  { name: "Tricep Press Machine", category: "Arms", equipment: "Machine", difficulty: "Beginner" }
]

triceps_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{triceps_exercises.count} triceps exercises created!"

puts "Seeding Forearm Exercises..."

forearm_exercises = [
  { name: "Wrist Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Reverse Wrist Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Dumbbell Wrist Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Reverse Dumbbell Wrist Curl", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Behind the Back Wrist Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Farmer's Walk", category: "Arms", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Plate Pinch", category: "Arms", equipment: "Other", difficulty: "Beginner" },
  { name: "Dead Hang", category: "Arms", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Towel Pull-Up", category: "Arms", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Fat Grip Training", category: "Arms", equipment: "Other", difficulty: "Intermediate" },
  { name: "Reverse Curl", category: "Arms", equipment: "Barbell", difficulty: "Beginner" },
  { name: "Cable Wrist Curl", category: "Arms", equipment: "Cable", difficulty: "Beginner" },
  { name: "Resistance Band Wrist Curl", category: "Arms", equipment: "Bands", difficulty: "Beginner" }
]

forearm_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{forearm_exercises.count} forearm exercises created!"
puts "Part 2 complete: #{shoulder_exercises.count + biceps_exercises.count + triceps_exercises.count + forearm_exercises.count} total exercises"

quad_exercises = [
  { name: "Barbell Squat", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Back Squat", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Front Squat", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "High Bar Squat", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Low Bar Squat", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Box Squat", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Pause Squat", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Pin Squat", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Zercher Squat", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Safety Bar Squat", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Bulgarian Split Squat", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Dumbbell Bulgarian Split Squat", category: "Legs", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Goblet Squat", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Dumbbell Squat", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Sissy Squat", category: "Legs", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Pistol Squat", category: "Legs", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Jump Squat", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Split Squat", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Dumbbell Split Squat", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Hack Squat", category: "Legs", equipment: "Machine", difficulty: "Intermediate" },
  { name: "Machine Squat", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Smith Machine Squat", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Leg Press", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Wide Stance Leg Press", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Narrow Stance Leg Press", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Single Leg Press", category: "Legs", equipment: "Machine", difficulty: "Intermediate" },
  { name: "Leg Extension", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Single Leg Extension", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Walking Lunge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Reverse Lunge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Forward Lunge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Dumbbell Lunge", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Barbell Lunge", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Lateral Lunge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Curtsy Lunge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Step-Up", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Dumbbell Step-Up", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Barbell Step-Up", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Box Jump", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Broad Jump", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Wall Sit", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" }
]

quad_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{quad_exercises.count} quadriceps exercises created!"

puts "Seeding Hamstring Exercises..."

hamstring_exercises = [
  { name: "Romanian Deadlift", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Stiff Leg Deadlift", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Romanian Deadlift", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Single Leg Romanian Deadlift", category: "Legs", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Good Morning", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Seated Good Morning", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Leg Curl", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Lying Leg Curl", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Seated Leg Curl", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Single Leg Curl", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Nordic Hamstring Curl", category: "Legs", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Glute Ham Raise", category: "Legs", equipment: "Machine", difficulty: "Advanced" },
  { name: "Swiss Ball Leg Curl", category: "Legs", equipment: "Other", difficulty: "Intermediate" },
  { name: "Slider Leg Curl", category: "Legs", equipment: "Other", difficulty: "Intermediate" },
  { name: "Cable Pull Through", category: "Legs", equipment: "Cable", difficulty: "Beginner" },
  { name: "Kettlebell Swing", category: "Legs", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Russian Kettlebell Swing", category: "Legs", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "American Kettlebell Swing", category: "Legs", equipment: "Kettlebell", difficulty: "Intermediate" }
]

hamstring_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{hamstring_exercises.count} hamstring exercises created!"

puts "Seeding Glute Exercises..."

glute_exercises = [
  { name: "Hip Thrust", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Barbell Hip Thrust", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Hip Thrust", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Single Leg Hip Thrust", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Glute Bridge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Barbell Glute Bridge", category: "Legs", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Single Leg Glute Bridge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Marching Glute Bridge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Cable Kickback", category: "Legs", equipment: "Cable", difficulty: "Beginner" },
  { name: "Donkey Kick", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Fire Hydrant", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Frog Pump", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Cable Pull Through", category: "Legs", equipment: "Cable", difficulty: "Beginner" },
  { name: "Sumo Deadlift", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Deficit Sumo Deadlift", category: "Legs", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Hip Abduction Machine", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Cable Hip Abduction", category: "Legs", equipment: "Cable", difficulty: "Beginner" },
  { name: "Monster Walk", category: "Legs", equipment: "Bands", difficulty: "Beginner" },
  { name: "Clamshell", category: "Legs", equipment: "Bands", difficulty: "Beginner" },
  { name: "Reverse Hyperextension", category: "Legs", equipment: "Machine", difficulty: "Intermediate" },
  { name: "45 Degree Back Extension", category: "Legs", equipment: "Machine", difficulty: "Beginner" }
]

glute_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{glute_exercises.count} glute exercises created!"

puts "Seeding Calf Exercises..."

calf_exercises = [
  { name: "Standing Calf Raise", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Seated Calf Raise", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Dumbbell Calf Raise", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Single Leg Calf Raise", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Smith Machine Calf Raise", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Leg Press Calf Raise", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Donkey Calf Raise", category: "Legs", equipment: "Machine", difficulty: "Intermediate" },
  { name: "Jump Rope", category: "Legs", equipment: "Other", difficulty: "Beginner" },
  { name: "Box Jump", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" }
]

calf_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{calf_exercises.count} calf exercises created!"

puts "Seeding Hip Adductor Exercises..."

adductor_exercises = [
  { name: "Hip Adduction Machine", category: "Legs", equipment: "Machine", difficulty: "Beginner" },
  { name: "Cable Hip Adduction", category: "Legs", equipment: "Cable", difficulty: "Beginner" },
  { name: "Copenhagen Plank", category: "Legs", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Sumo Squat", category: "Legs", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Cossack Squat", category: "Legs", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Side Lunge", category: "Legs", equipment: "Bodyweight", difficulty: "Beginner" }
]

adductor_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{adductor_exercises.count} hip adductor exercises created!"
puts "Part 3 complete: #{quad_exercises.count + hamstring_exercises.count + glute_exercises.count + calf_exercises.count + adductor_exercises.count} total exercises"

olympic_exercises = [
  { name: "Clean", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Power Clean", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Hang Clean", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Hang Power Clean", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Clean and Jerk", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Split Jerk", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Push Jerk", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Power Jerk", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Snatch", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Power Snatch", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Hang Snatch", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Hang Power Snatch", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Dumbbell Clean", category: "Olympic", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Dumbbell Snatch", category: "Olympic", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Kettlebell Clean", category: "Olympic", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Kettlebell Snatch", category: "Olympic", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Clean Pull", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Snatch Pull", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Clean Deadlift", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Snatch Deadlift", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Muscle Clean", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Muscle Snatch", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Overhead Squat", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Snatch Balance", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Snatch Grip RDL", category: "Olympic", equipment: "Barbell", difficulty: "Advanced" }
]

olympic_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{olympic_exercises.count} Olympic lift exercises created!"

puts "Seeding Functional & CrossFit Exercises..."

functional_exercises = [
  { name: "Thrusters", category: "Functional", equipment: "Barbell", difficulty: "Intermediate" },
  { name: "Dumbbell Thruster", category: "Functional", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Wall Ball", category: "Functional", equipment: "Other", difficulty: "Intermediate" },
  { name: "Medicine Ball Slam", category: "Functional", equipment: "Other", difficulty: "Beginner" },
  { name: "Medicine Ball Clean", category: "Functional", equipment: "Other", difficulty: "Intermediate" },
  { name: "Sandbag Carry", category: "Functional", equipment: "Other", difficulty: "Intermediate" },
  { name: "Sandbag Clean", category: "Functional", equipment: "Other", difficulty: "Intermediate" },
  { name: "Sandbag Squat", category: "Functional", equipment: "Other", difficulty: "Intermediate" },
  { name: "Atlas Stone Lift", category: "Functional", equipment: "Other", difficulty: "Advanced" },
  { name: "Log Press", category: "Functional", equipment: "Other", difficulty: "Advanced" },
  { name: "Yoke Walk", category: "Functional", equipment: "Other", difficulty: "Advanced" },
  { name: "Farmer's Walk", category: "Functional", equipment: "Dumbbell", difficulty: "Beginner" },
  { name: "Overhead Walk", category: "Functional", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Waiter's Walk", category: "Functional", equipment: "Dumbbell", difficulty: "Intermediate" },
  { name: "Plate Pinch Carry", category: "Functional", equipment: "Other", difficulty: "Intermediate" },
  { name: "Turkish Get-Up", category: "Functional", equipment: "Kettlebell", difficulty: "Advanced" },
  { name: "Kettlebell Swing", category: "Functional", equipment: "Kettlebell", difficulty: "Intermediate" },
  { name: "Kettlebell Windmill", category: "Functional", equipment: "Kettlebell", difficulty: "Advanced" },
  { name: "Kettlebell Halo", category: "Functional", equipment: "Kettlebell", difficulty: "Beginner" },
  { name: "Man Maker", category: "Functional", equipment: "Dumbbell", difficulty: "Advanced" },
  { name: "Devil Press", category: "Functional", equipment: "Dumbbell", difficulty: "Advanced" },
  { name: "Dumbbell Complex", category: "Functional", equipment: "Dumbbell", difficulty: "Advanced" },
  { name: "Barbell Complex", category: "Functional", equipment: "Barbell", difficulty: "Advanced" },
  { name: "Bear Crawl", category: "Functional", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Crab Walk", category: "Functional", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Inch Worm", category: "Functional", equipment: "Bodyweight", difficulty: "Beginner" }
]

functional_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{functional_exercises.count} functional exercises created!"

puts "Seeding Plyometric Exercises..."

plyometric_exercises = [
  { name: "Box Jump", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Depth Jump", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Lateral Box Jump", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Box Jump Over", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Tuck Jump", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Split Jump", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Broad Jump", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Lateral Bound", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Single Leg Hop", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Double Leg Hop", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Plyo Push-Up", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Clapping Push-Up", category: "Plyometrics", equipment: "Bodyweight", difficulty: "Advanced" },
  { name: "Medicine Ball Chest Pass", category: "Plyometrics", equipment: "Other", difficulty: "Beginner" },
  { name: "Medicine Ball Slam", category: "Plyometrics", equipment: "Other", difficulty: "Beginner" },
  { name: "Medicine Ball Overhead Throw", category: "Plyometrics", equipment: "Other", difficulty: "Intermediate" },
  { name: "Medicine Ball Side Toss", category: "Plyometrics", equipment: "Other", difficulty: "Intermediate" }
]

plyometric_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{plyometric_exercises.count} plyometric exercises created!"

puts "Seeding Mobility & Flexibility Exercises..."

mobility_exercises = [
  { name: "Cat Cow Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Child's Pose", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Downward Dog", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Pigeon Pose", category: "Mobility", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Couch Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "90/90 Hip Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Frog Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "World's Greatest Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Spiderman Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Thread the Needle", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Scorpion Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Bretzel Stretch", category: "Mobility", equipment: "Bodyweight", difficulty: "Intermediate" },
  { name: "Shoulder Dislocates", category: "Mobility", equipment: "Other", difficulty: "Beginner" },
  { name: "Band Pull Apart", category: "Mobility", equipment: "Bands", difficulty: "Beginner" },
  { name: "Wall Slide", category: "Mobility", equipment: "Bodyweight", difficulty: "Beginner" },
  { name: "Foam Roll Thoracic Spine", category: "Mobility", equipment: "Other", difficulty: "Beginner" },
  { name: "Foam Roll IT Band", category: "Mobility", equipment: "Other", difficulty: "Beginner" },
  { name: "Lacrosse Ball Glute", category: "Mobility", equipment: "Other", difficulty: "Beginner" }
]

mobility_exercises.each do |exercise|
  Exercise.find_or_create_by!(name: exercise[:name]) do |e|
    e.category = exercise[:category]
    e.equipment = exercise[:equipment]
    e.difficulty = exercise[:difficulty]
  end
end

puts "#{mobility_exercises.count} mobility exercises created!"

puts "Part 5 complete: #{olympic_exercises.count + functional_exercises.count + plyometric_exercises.count + mobility_exercises.count} total exercises"
