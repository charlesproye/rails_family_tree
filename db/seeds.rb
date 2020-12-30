# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Family.destroy_all
User.destroy_all
Couple.destroy_all

family1 = Family.create!(name: 'Duhamel')

jacotte = User.create!(first_name: 'jacotte', last_name: 'Moinet', email: 'jacotte@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true)
yves = User.create!(first_name: 'yves', last_name: 'Moinet', email: 'yves@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false)

elvire = User.create!(first_name: 'elvire', last_name: 'Moinet', email: 'elvire@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte)
rodolphe = User.create!(first_name: 'rodolphe', last_name: 'Moinet', email: 'rodolphe@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte)
pauline = User.create!(first_name: 'pauline', last_name: 'Moinet', email: 'pauline@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte)
igor = User.create!(first_name: 'igor', last_name: 'Moinet', email: 'igor@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte)

isabelle = User.create!(first_name: 'isabelle', last_name: 'Moinet', email: 'isabelle@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false, parent: rodolphe)
coralie = User.create!(first_name: 'coralie', last_name: 'Moinet', email: 'coralie@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false, parent: igor)

charles = User.create!(first_name: 'Charles', last_name: 'Proye', email: 'charles@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: elvire)
eloise = User.create!(first_name: 'eloise', last_name: 'Proye', email: 'eloise@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: elvire)
maud = User.create!(first_name: 'maud', last_name: 'Proye', email: 'maud@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: elvire)
hector = User.create!(first_name: 'hector', last_name: 'Moinet', email: 'hector@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: rodolphe)
jules = User.create!(first_name: 'jules', last_name: 'Moinet', email: 'jules@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: rodolphe)
oscar = User.create!(first_name: 'oscar', last_name: 'Moinet', email: 'oscar@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: igor)
margaux = User.create!(first_name: 'margaux', last_name: 'Moinet', email: 'margaux@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: igor)
audrey = User.create!(first_name: 'audrey', last_name: 'Michenaud_Rague', email: 'audrey@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline)
max = User.create!(first_name: 'max', last_name: 'Moinet', email: 'max@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: igor)
alexis = User.create!(first_name: 'alexis', last_name: 'Michenaud_Rague', email: 'alexis@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline)
gregoire = User.create!(first_name: 'gregoire', last_name: 'Michenaud_Rague', email: 'gregoire@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline)
romain = User.create!(first_name: 'romain', last_name: 'Michenaud_Rague', email: 'romain@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline)

couple1 = Couple.create!(blood_user_id: jacotte.id, out_user: yves, family_id: family1.id)
couple2 = Couple.create!(blood_user: rodolphe, out_user: isabelle, family_id: family1.id)
couple3 = Couple.create!(blood_user: igor, out_user: coralie, family_id: family1.id)

puts 'Successfuly seeded !'
