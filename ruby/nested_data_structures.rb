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

p mission_high[:physics_class_grades][:john][:fourth_quar].to_s
p mission_high[:english_class_request][5].upcase
p mission_high[:band_room][:michelle].reverse
p mission_high[:teachers][:mr_drumin][-1].upcase.chop
p mission_high[:physics_class_grades][:john][:first_quar] + mission_high[:physics_class_grades][:john][:second_quar]
