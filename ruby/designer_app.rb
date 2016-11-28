applicate_info = {
    Name: '',
    Address: '',
    Email: '',
    Phone: '',
    Fav_shade_blue: '',
    Wallpaper_pref: ["Paisley", "Chevrons", "Photorealistic woodsy scenes (with or without squirrels)", "Abstract woodsy scenes (no squirrels)"],
    Ombre_is: ['Fierce', 'So last season', 'Practically medieval in its appalling irrelevance']
}


applicate_info[:Name] = "Tommy jones"
applicate_info[:Address] = "3434 Clear St"
applicate_info[:Email] = "Jone@tomtomy.gmail.com"
applicate_info[:Phone] = "343-3434"
applicate_info[:Fav_shade_blue] = "dark bleu"

applicate_info.each do |key, val|
  puts "#{key} " + "#{val}"

end

puts "#{applicate_info[:Name]} " + "#{applicate_info[:Address]}"

puts applicate_info
