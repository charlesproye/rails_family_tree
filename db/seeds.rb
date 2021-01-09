# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Family.destroy_all
User.destroy_all
Couple.destroy_all

family1 = Family.create!(name: 'Duhamel')

léon = User.create!(first_name: 'Léon', last_name: 'Duhamel', email: 'léon@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
paulette = User.create!(first_name: 'Paulette', last_name: 'Duhamel', email: 'paulette@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')

# Tante guiguite
#1
marguerite_1 = User.create!(first_name: 'Marguerite', last_name: 'Duhamel', parent: léon, email: 'marguerite_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')

  #2
  véronique = User.create!(first_name: 'véronique', last_name: 'Duhamel', parent: marguerite_1, email: 'véronique@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    raphaël = User.create!(first_name: 'raphaël', last_name: 'Duhamel', parent: véronique, email: 'raphaël@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    maxime = User.create!(first_name: 'maxime', last_name: 'Duhamel', parent: véronique, email: 'maxime@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      oscar_1 = User.create!(first_name: 'oscar', last_name: 'Duhamel', parent: maxime, email: 'oscar_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      gabriel = User.create!(first_name: 'gabriel', last_name: 'Duhamel', parent: maxime, email: 'gabriel@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  nathalie_11 = User.create!(first_name: 'nathalie', last_name: 'Duhamel', parent: marguerite_1, email: 'nathalie_11@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    jean_baptiste = User.create!(first_name: 'jean-baptiste', last_name: 'Duhamel', parent: nathalie_11, email: 'jean-baptiste@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      anna = User.create!(first_name: 'anna', last_name: 'Duhamel', parent: jean_baptiste, email: 'anna@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      baptiste = User.create!(first_name: 'baptiste', last_name: 'Duhamel', parent: jean_baptiste, email: 'baptiste@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    pierre_1 = User.create!(first_name: 'pierre', last_name: 'Duhamel', parent: nathalie_11, email: 'pierre_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      léana = User.create!(first_name: 'léana', last_name: 'Duhamel', parent: pierre_1, email: 'léana@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    laura = User.create!(first_name: 'laura', last_name: 'Duhamel', parent: nathalie_11, email: 'laura@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      carla_maria = User.create!(first_name: 'carla-maria', last_name: 'Duhamel', parent: laura, email: 'carla-maria@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      antoine_joseph = User.create!(first_name: 'antoine-joseph', last_name: 'Duhamel', parent: laura, email: 'antoine-joseph@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  jean_françois = User.create!(first_name: 'jean-françois', last_name: 'Duhamel', parent: marguerite_1, email: 'jean-françois@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    charlotte = User.create!(first_name: 'charlotte', last_name: 'Duhamel', parent: jean_françois, email: 'charlotte_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    louis_1 = User.create!(first_name: 'louis', last_name: 'Duhamel', parent: jean_françois, email: 'louis_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    nathalie_12 = User.create!(first_name: 'nathalie', last_name: 'Duhamel', parent: jean_françois, email: 'nathalie_12@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  caroline = User.create!(first_name: 'caroline', last_name: 'Duhamel', parent: marguerite_1, email: 'caroline@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    olivier_1 = User.create!(first_name: 'olivier', last_name: 'Duhamel', parent: caroline, email: 'olivier_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    marie_1 = User.create!(first_name: 'marie', last_name: 'Duhamel', parent: caroline, email: 'marie_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    julie_1 = User.create!(first_name: 'julie', last_name: 'Duhamel', parent: caroline, email: 'julie_1@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')




#Léon laude
#1
léon_claude = User.create!(first_name: 'léon-claude', last_name: 'Duhamel', parent: léon, email: 'léon-claude@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  alexis_2 = User.create!(first_name: 'alexis', last_name: 'Duhamel', parent: léon_claude, email: 'alexis_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    martine = User.create!(first_name: 'martine', last_name: 'Duhamel', parent: alexis_2, email: 'martine@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    céline = User.create!(first_name: 'céline', last_name: 'Duhamel', parent: alexis_2, email: 'céline@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    alexandra = User.create!(first_name: 'alexandra', last_name: 'Duhamel', parent: alexis_2, email: 'alexandra@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  sophie_2 = User.create!(first_name: 'sophie_2', last_name: 'Duhamel', parent: léon_claude, email: 'sophie_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    charlotte_2 = User.create!(first_name: 'charlotte', last_name: 'Duhamel', parent: sophie_2, email: 'charlotte_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    benjamine = User.create!(first_name: 'benjamine', last_name: 'Duhamel', parent: sophie_2, email: 'benjamine@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    martin_2 = User.create!(first_name: 'martin', last_name: 'Duhamel', parent: sophie_2, email: 'martin_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      oscar_2 = User.create!(first_name: 'oscar', last_name: 'Duhamel', parent: martin_2, email: 'oscar_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      jules_2 = User.create!(first_name: 'jules', last_name: 'Duhamel', parent: martin_2, email: 'jules_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    olivia = User.create!(first_name: 'olivia', last_name: 'Duhamel', parent: sophie_2, email: 'olivia@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    victoria = User.create!(first_name: 'victoria', last_name: 'Duhamel', parent: sophie_2, email: 'victoria@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    joseph_21 = User.create!(first_name: 'joseph', last_name: 'Duhamel', parent: sophie_2, email: 'joseph_21@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  juliette = User.create!(first_name: 'juliette', last_name: 'Duhamel', parent: léon_claude, email: 'juliette@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    marie_2 = User.create!(first_name: 'marie', last_name: 'Duhamel', parent: juliette, email: 'marie_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      xavier = User.create!(first_name: 'xavier', last_name: 'Duhamel', parent: marie_2, email: 'xavier@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      gustave = User.create!(first_name: 'gustave', last_name: 'Duhamel', parent: marie_2, email: 'gustave@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      zélie = User.create!(first_name: 'zélie', last_name: 'Duhamel', parent: marie_2, email: 'zélie@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      joseph_22 = User.create!(first_name: 'joseph', last_name: 'Duhamel', parent: marie_2, email: 'joseph22@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    charles_2 = User.create!(first_name: 'charles', last_name: 'Duhamel', parent: juliette, email: 'charles_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      augustin = User.create!(first_name: 'augustin', last_name: 'Duhamel', parent: charles_2, email: 'augustin@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    doriane = User.create!(first_name: 'doriane', last_name: 'Duhamel', parent: juliette, email: 'doriane@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      alice = User.create!(first_name: 'alice', last_name: 'Duhamel', parent: doriane, email: 'alice@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      maguelone = User.create!(first_name: 'maguelone', last_name: 'Duhamel', parent: doriane, email: 'maguelone@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      céleste = User.create!(first_name: 'céleste', last_name: 'Duhamel', parent: doriane, email: 'céleste@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    aline = User.create!(first_name: 'aline', last_name: 'Duhamel', parent: juliette, email: 'aline@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      raphaëlle = User.create!(first_name: 'raphaëlle', last_name: 'Duhamel', parent: aline, email: 'raphaëlle@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    lucie = User.create!(first_name: 'lucie', last_name: 'Duhamel', parent: juliette, email: 'lucie@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
      #4
      gautier = User.create!(first_name: 'gautier', last_name: 'Duhamel', parent: lucie, email: 'gautier@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    arthur_2 = User.create!(first_name: 'arthur', last_name: 'Duhamel', parent: juliette, email: 'arthur_2@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    blandine = User.create!(first_name: 'blandine', last_name: 'Duhamel', parent: juliette, email: 'blandine@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    astrid = User.create!(first_name: 'astrid', last_name: 'Duhamel', parent: juliette, email: 'astrid@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  léon_nicolas = User.create!(first_name: 'léon-nicolas', last_name: 'Duhamel', parent: léon_claude, email: 'léon_nicolas@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    valentine = User.create!(first_name: 'valentine', last_name: 'Duhamel', parent: léon_nicolas, email: 'valentine@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    clara = User.create!(first_name: 'clara', last_name: 'Duhamel', parent: léon_nicolas, email: 'clara@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    madeleine = User.create!(first_name: 'madeleine', last_name: 'Duhamel', parent: léon_nicolas, email: 'madeleine@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')




#Françoise
#1
françoise = User.create!(first_name: 'Françoise', last_name: 'Duhamel', parent: léon, email: 'Françoise@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  christian_pierre = User.create!(first_name: 'christian-pierre', last_name: 'Duhamel', parent: françoise, email: 'christian-pierre@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  isabelle_3 = User.create!(first_name: 'isabelle', last_name: 'Duhamel', parent: françoise, email: 'isabelle_3@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    #3
    martin_3 = User.create!(first_name: 'martin', last_name: 'Duhamel', parent: isabelle_3, email: 'martin_3@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    pierre_3 = User.create!(first_name: 'pierre', last_name: 'Duhamel', parent: isabelle_3, email: 'pierre_3@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  #2
  thomas = User.create!(first_name: 'thomas', last_name: 'Duhamel', parent: françoise, email: 'thomas@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    julien = User.create!(first_name: 'julien', last_name: 'Duhamel', parent: thomas, email: 'julien@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')


#jacotte
#1
jacotte = User.create!(first_name: 'jacotte', last_name: 'Duhamel', parent: léon, email: 'jacotte@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
yves = User.create!(first_name: 'yves', last_name: 'Moinet', email: 'yves@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false, birth_date: "Mar, 28 Mar 1986", city: "Lille", parent: jacotte)
  #2
  pauline = User.create!(first_name: 'pauline', last_name: 'Moinet', email: 'pauline@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    alexis_4 = User.create!(first_name: 'alexis', last_name: 'Michenaud_Rague', email: 'alexis_4@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    gregoire = User.create!(first_name: 'gregoire', last_name: 'Michenaud_Rague', email: 'gregoire@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    romain = User.create!(first_name: 'romain', last_name: 'Michenaud_Rague', email: 'romain@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    audrey = User.create!(first_name: 'audrey', last_name: 'Michenaud_Rague', email: 'audrey@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: pauline, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')

  rodolphe = User.create!(first_name: 'rodolphe', last_name: 'Moinet', email: 'rodolphe@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  isabelle_4 = User.create!(first_name: 'isabelle', last_name: 'Moinet', email: 'isabelle_4@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false, parent: rodolphe, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000', lady_name: 'Taisne')
    jules_4 = User.create!(first_name: 'jules', last_name: 'Moinet', email: 'jules_4@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: rodolphe, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    hector = User.create!(first_name: 'hector', last_name: 'Moinet', email: 'hector@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: rodolphe, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')

  elvire = User.create!(first_name: 'elvire', last_name: 'Moinet', email: 'elvire@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    eloise = User.create!(first_name: 'eloise', last_name: 'Proye', email: 'eloise@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: elvire, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    charles_4 = User.create!(first_name: 'Charles', last_name: 'Proye', email: 'charles_4@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: elvire, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    maud = User.create!(first_name: 'maud', last_name: 'Proye', email: 'maud@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: elvire, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')

  igor = User.create!(first_name: 'igor', last_name: 'Moinet', email: 'igor@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: jacotte, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  coralie = User.create!(first_name: 'coralie', last_name: 'Moinet', email: 'coralie@mail.com', password: 'azerty', family_id: family1.id, direct_blood: false, parent: igor, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000', lady_name: 'Gascquet')
    oscar_4 = User.create!(first_name: 'oscar', last_name: 'Moinet', email: 'oscar_4@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: igor, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    margaux = User.create!(first_name: 'margaux', last_name: 'Moinet', email: 'margaux@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: igor, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    max = User.create!(first_name: 'max', last_name: 'Moinet', email: 'max@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, parent: igor, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')




#colette
colette = User.create!(first_name: 'colette', last_name: 'Duhamel', parent: léon, email: 'colette@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  vincent = User.create!(first_name: 'vincent', last_name: 'Duhamel', parent: colette, email: 'vincent@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    célestin = User.create!(first_name: 'celestin', last_name: 'Duhamel', parent: vincent, email: 'celestin@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    andréa = User.create!(first_name: 'andréa', last_name: 'Duhamel', parent: vincent, email: 'andréa@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  laurent = User.create!(first_name: 'laurent', last_name: 'Duhamel', parent: colette, email: 'laurent@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    marguerite_5 = User.create!(first_name: 'marguerite', last_name: 'Duhamel', parent: laurent, email: 'marguerite_5@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    henri = User.create!(first_name: 'henri', last_name: 'Duhamel', parent: laurent, email: 'henri@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    maxence = User.create!(first_name: 'maxence', last_name: 'Duhamel', parent: laurent, email: 'maxence@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  olivier_5 = User.create!(first_name: 'olivier', last_name: 'Duhamel', parent: colette, email: 'olivier_5@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    louis_5 = User.create!(first_name: 'louis', last_name: 'Duhamel', parent: olivier_5, email: 'louis_5@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  anne = User.create!(first_name: 'anne', last_name: 'Duhamel', parent: colette, email: 'anne@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    augustine = User.create!(first_name: 'augustine', last_name: 'Duhamel', parent: anne, email: 'augustine@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    léonie = User.create!(first_name: 'léonie', last_name: 'Duhamel', parent: anne, email: 'léonie@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')


#anette
anette = User.create!(first_name: 'anette', last_name: 'Duhamel', parent: léon, email: 'anette@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  diane = User.create!(first_name: 'diane', last_name: 'Duhamel', parent: anette, email: 'diane@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    sophie_6 = User.create!(first_name: 'sophie', last_name: 'Duhamel', parent: diane, email: 'sophie@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    eugene = User.create!(first_name: 'eugene', last_name: 'Duhamel', parent: diane, email: 'eugene@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  charles_6 = User.create!(first_name: 'charles', last_name: 'Duhamel', parent: anette, email: 'charles_6@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    manon = User.create!(first_name: 'manon', last_name: 'Duhamel', parent: charles_6, email: 'manon@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    marguerite_6 = User.create!(first_name: 'marguerite', last_name: 'Duhamel', parent: charles_6, email: 'marguerite_6@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    léon_2 = User.create!(first_name: 'léon', last_name: 'Duhamel', parent: charles_6, email: 'léon_6@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  fleur = User.create!(first_name: 'fleur', last_name: 'Duhamel', parent: anette, email: 'fleur@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    marie_6 = User.create!(first_name: 'marie', last_name: 'Duhamel', parent: fleur, email: 'marie_6@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')

#bernard
bernard = User.create!(first_name: 'bernard', last_name: 'Duhamel', parent: léon, email: 'bernard@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  fanny = User.create!(first_name: 'fanny', last_name: 'Duhamel', parent: bernard, email: 'fanny@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    victoire = User.create!(first_name: 'victoire', last_name: 'Duhamel', parent: fanny, email: 'victoire@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  julie_7 = User.create!(first_name: 'julie', last_name: 'Duhamel', parent: bernard, email: 'julie_7@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    arthur_7 = User.create!(first_name: 'arthur', last_name: 'Duhamel', parent: julie_7, email: 'arthur_7@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    louise = User.create!(first_name: 'louise', last_name: 'Duhamel', parent: julie_7, email: 'louise@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
  louis_7 = User.create!(first_name: 'louis', last_name: 'Duhamel', parent: bernard, email: 'louis_7@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    lison = User.create!(first_name: 'lison', last_name: 'Duhamel', parent: louis_7, email: 'lison@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    joseph_7 = User.create!(first_name: 'joseph', last_name: 'Duhamel', parent: louis_7, email: 'joseph@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')
    brune = User.create!(first_name: 'brune', last_name: 'Duhamel', parent: louis_7, email: 'brune@mail.com', password: 'azerty', family_id: family1.id, direct_blood: true, birth_date: "Mar, 28 Mar 1986", city: "Lille", phone: '0600000000')












couple1 = Couple.create!(blood_user_id: jacotte.id, out_user: yves, family_id: family1.id)
couple2 = Couple.create!(blood_user: rodolphe, out_user: isabelle_4, family_id: family1.id)
couple3 = Couple.create!(blood_user: igor, out_user: coralie, family_id: family1.id)
couple4 = Couple.create!(blood_user: léon, out_user: paulette, family_id: family1.id)

puts "#{User.all.count} users created"

puts 'Successfuly seeded !'
