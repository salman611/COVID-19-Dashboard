# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Hospital.create!([
{ "name": "King Fahad Medical City - KFMC", "latitude": "24.686913","longitude": "46.704106", img:"https://www.arabnews.com/sites/default/files/styles/n_670_395/public/2016/04/04/file-04-logo55Ar1.jpg?itok=w2CLyfH-"},
{ "name": "King Faisal Specialist Hospital & Research Centre", "latitude": "24.670964", "longitude": "46.680116", img: "https://www.kfshrc.edu.sa/store/headline/9842.png?https://www.arabnews.com/sites/default/files/styles/n_670_395/public/2016/04/04/file-04-logo55Ar1.jpg?itok=w2CLyfH-"},
{ "name": "Dr. Sulaiman Al habib Olaya Medical Complex", "latitude": "24.705394", "longitude": "46.677456",img: "https://image.slidesharecdn.com/drsalhabibprojectsfinal-13067458221465-phpapp01-110530035857-phpapp01/95/dr-s-al-habib-projects-final-1-728.jpg?"}
])




Store.create!([
{ "name": "Whites Pharmacy", "latitude": "24.715226", "longitude": "46.660799", img: "https://s3-eu-west-1.amazonaws.com/wuzzuf/files/company_logo/Whites-Saudi-Arabia-14907-1457271860-og.png"},
{ "name": "Alnahdi Pharmacy", "latitude": "24.727981", "longitude": "46.652904", img: "https://i.ytimg.com/vi/peiJ-HaL934/maxresdefault.jpg"},
{ "name": "Care Pharmacy", "latitude": "24.691614", "longitude": "46.698555", img: "https://dcassetcdn.com/design_img/183600/133824/133824_2146335_183600_image.png"}
])


Briefing.create("question": "What is coronavirus disease 2019 (COVID-19)?", "answer": "Coronavirus disease 2019 (COVID-19) is a respiratory illness
that can spread from person to person. The virus that causes
COVID-19 is a novel coronavirus that was first identified during
an investigation into an outbreak in Wuhan, China.")
Briefing.create("question": "How does COVID-19 spread?", "answer": "The virus that causes COVID-19 probably emerged from an
animal source, but is now spreading from person to person.
The virus is thought to spread mainly between people who
are in close contact with one another (within about 6 feet)
through respiratory droplets produced when an infected
person coughs or sneezes. It also may be possible that a person
can get COVID-19 by touching a surface or object that has
the virus on it and then touching their own mouth, nose, or
possibly their eyes, but this is not thought to be the main
way the virus spreads. Learn what is known about the spread
of newly emerged coronaviruses at https://www.cdc.gov/
coronavirus/2019-ncov/about/transmission.html.")

Briefing.create("question": "What are the symptoms of COVID-19?", "answer": "Patients with COVID-19 have had mild to severe respiratory
illness with symptoms of 
\u2022 fever
\u2022 cough
\u2022 shortness of breath")
Briefing.create("question": "What are severe complications from this virus?", "answer": "Some patients have pneumonia in both lungs, multi-organ
failure and in some cases death.")
Briefing.create("question": "Is there a vaccine?", "answer": "There is currently no vaccine to protect against COVID-19. The
best way to prevent infection is to take everyday preventive
actions, like avoiding close contact with people who are sick and
washing your hands often.")
Briefing.create("question": "Is there a treatment?", "answer": "There is no specific antiviral treatment for COVID-19.
People with COVID-19 can seek medical care to help relieve symptoms.")


   




