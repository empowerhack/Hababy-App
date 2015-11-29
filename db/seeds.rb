# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

terms = Term.create([{ month: 1, ante_natal: true, post_natal: false }, 
                     { month: 4, ante_natal: true, post_natal: false },
                     { month: 6, ante_natal: true, post_natal: false },
                     { month: 8, ante_natal: true, post_natal: false },
                     { month: 9, ante_natal: true, post_natal: false },
                     { month: 10, ante_natal: false, post_natal: true },
                     { month: 12, ante_natal: false, post_natal: true },])

countries = Country.create([{ name: "United Kingdom" , iso: "GB" , iso3: "GBR" },
                            { name: "France" , iso: "FR" , iso3: "FRA" },
                            { name: "Germany" , iso: "DE" , iso3: "DEU" },
                            { name: "Austria" , iso: "AT" , iso3: "AUT" },
                            { name: "Hungary" , iso: "HU" , iso3: "HUN" },])

symptoms = Symptom.create([{ title: "Swollen Ankles", description: "Swollen ankles, feet and fingers", term_id: 2, arabic_description: "", arabic_title: ""},
                           { title: "Morning Sickness", description: "Sickness during pregnancy", term_id: 1, arabic_description: "", arabic_title: ""},
                           { title: "Sore Breasts", description: "Soreness in the breasts or nipples", term_id: 1, arabic_description: "", arabic_title: ""},
                           { title: "Backache", description: "Achiness in the (commonly lower) back", term_id: 1, arabic_description: "", arabic_title: ""},
                           { title: "Bleeding Gums", description: "Gums visibly bleeding, or blood appearing while brushing your teeth", term_id: 1, arabic_description: "", arabic_title: ""},
                           ])

topics = Topic.create([{ name: "Home Births", text: "Advice for if you are planning to give birth at home"}])

advices = Advice.create([{ title: "Swollen Ankles", description: "Ankles, feet and fingers often swell a little in pregnancy as your body is holding more water than usual. \nTowards the end of the day, the extra water tends to gather in the lowest parts of the body, especially if the weather is hot or if you have been standing a lot. The gradual swelling isn't harmful to you or your baby, but it can be uncomfortable.", country_id: 1, symptom_id: 1, topic_id: nil, arabic_title: "", arabic_description: "" },
                         { title: "Morning Sickness", description: "You may feel sick and nauseous, and/or vomit. This is commonly known as morning sickness, but it can happen at any time of the day or night. If you're being sick all the time and can't keep anything down, contact your GP. The pregnancy condition hyperemesis gravidarum (HG) is a serious condition that causes severe vomiting and needs treatment. \nPregnancy consultations with GPs is free in the UK", country_id: 1, symptom_id: 1, topic_id: nil, arabic_title: "", arabic_description: "" },
                         { title: "Sore Breasts", description: "Your breasts may become larger and feel tender, just as they might do before your period. They may also tingle. The veins may be more visible, and the nipples may darken and stand out. This is normal.", country_id: 1, symptom_id: 1, topic_id: nil, arabic_title: "", arabic_description: "" },
                         { title: "Backache", description: "During pregnancy, the ligaments in your body naturally become softer and stretch to prepare you for labour. This can put a strain on the joints of your lower back and pelvis, which can cause backache.", country_id: 1, symptom_id: 1, topic_id: nil, arabic_title: "", arabic_description: "" },
                         { title: "Bleeding Gums", description: "Some women get swollen and sore gums, which may bleed, in pregnancy. Bleeding gums are caused by a build-up of plaque on the teeth. Hormonal changes during pregnancy can make your gums more vulnerable to plaque, leading to inflammation and bleeding. This is also called pregnancy gingivitis or gum disease. You should seek advice from a dentist who will treat pregnant women for free in the UK", country_id: 1, symptom_id: 1, topic_id: nil, arabic_title: "", arabic_description: "" },])

