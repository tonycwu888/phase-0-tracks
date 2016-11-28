mission_high = {
    physics_class_grades: {
      john: {
        first_quar: 80,
        second_quar: 89,
        third_quar: 79,
        fourth_quar: 90,
      },
      samantha: {
        first_quar: 89,
        second_quar: 60,
        third_quar: 70,
        fourth_quar: 80,
      },
    },
    english_class_request: [
      "computer", "desk", "pencil", "paper", "chalks", "red pen", "rubber bands"
    ],
    band_room: {
      joe: "trupet",
      patty: "flute",
      michelle: ["drums", "clarinet", "piano", "cello"],
    },
    teachers: {
      mr_jones: "nice",
      mrs_fisher: "very sweet",
      mr_drumin: ["crazy", "nutty", "disturbing", "stinky"],
    },
}
mission_high.each {|classes, quarters| puts "#{classes} and #{quarters}"}
puts "======= looking up data =========="
puts "#{mission_high[:physics_class_grades][:john][:fourth_quar].to_s} physics class grade for John's 4th quarter"
puts "#{mission_high[:english_class_request][5].upcase } english class, fifth item in class changing word to upper case"
puts "#{mission_high[:band_room][:michelle].reverse} band room, change the order of instruments played by Michelle"
puts "#{mission_high[:teachers][:mr_drumin][-1].upcase.chop} teachers, remove discription for Mr. Drumin (last item)"
