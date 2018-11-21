# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

#BRASOES
model = Model.create(:name => 'Papel esfumaçado', :position => 1, :delivery => 60, :junction => false,
                  :description => 'Brasão aquarelado em papel vergé esfumaçado, com histórico (caso tenha) e simbologia (estudo dos significados das cores e símbolos do brasão) em letra gótica.')
Size.create(:width => 21, :height => 30, :value => 210, :weight => 0.1, :product => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2503',
              :flickr_key => '4224115032', :flickr_secret => 'f9ca7d5df0', :level => 0, :imageable => model)
Photo.create(:flickr_farm => '5', :flickr_server => '4005',
              :flickr_key => '4224116268', :flickr_secret => '7e4beaa82d', :level => 1, :imageable => model)

model = Model.create(:name => 'Pergaminho', :position => 2, :delivery => 60, :junction => false,
                  :description => 'Brasão aquarelado em papel vergé com fundo em pergaminho, histórico (caso tenha) e simbologia (estudo dos significados das cores e símbolos do brasão) em letra gótica.')
Size.create(:width => 21, :height => 30, :value => 210, :weight => 0.1, :product => model)
Photo.create(:flickr_farm => '5', :flickr_server => '4034',
              :flickr_key => '4224071250', :flickr_secret => 'c0e28e556a', :level => 0, :imageable => model)
Photo.create(:flickr_farm => '5', :flickr_server => '4030',
              :flickr_key => '4224071634', :flickr_secret => 'dca55f0f5c', :level => 1, :imageable => model)
Photo.create(:flickr_farm => '5', :flickr_server => '4017',
              :flickr_key => '4223308111', :flickr_secret => 'b5dcb2e274', :level => 2, :imageable => model)
              
model = Model.create(:name => 'Brasão em prato de vidro', :position => 101, :delivery => 10, :junction => false,
                      :description => 'Este modelo está disponível <span class="alert">apenas para sobrenomes de origem Portuguesa.</span>')
Size.create(:diameter => 30, :value => 130, :weight => 0.8, :product => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2562', 
              :flickr_key => '3930903688', :flickr_secret => '940fe637c3', :level => 0, :imageable => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2464',
              :flickr_key => '3945599757', :flickr_secret => '70bc523f51', :level => 1, :imageable => model)
Photo.create(:flickr_farm => '4', :flickr_server => '3479',
              :flickr_key => '3946381284', :flickr_secret => 'd00df37321', :level => 1, :imageable => model)

model = Model.create(:name => 'Brasão em prato de madeira', :position => 102, :delivery => 60, :junction => false,
                      :description => 'Brasão pirogravado e pintado em prato de madeira de lei.')
Size.create(:diameter => 27, :value => 350, :weight => 0.8, :product => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2524',
              :flickr_key => '4186027773', :flickr_secret => '9a6f2c436c', :level => 0, :imageable => model)

model = Model.create(:name => 'Brasão em madeira', :position => 103, :delivery => 60, :junction => false,
                      :description => 'Brasão pirogravado e pintado em madeira de lei.')
Size.create(:width => 14, :height => 19, :value => 150, :weight => 0.5, :product => model)
Size.create(:width => 20, :height => 23, :value => 320, :weight => 0.7, :product => model)
Size.create(:width => 28, :height => 33, :value => 350, :weight => 0.8, :product => model)
Size.create(:width => 39, :height => 43, :value => 532, :weight => 1.1, :product => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2721',
              :flickr_key => '4186054975', :flickr_secret => '7ef986a478', :level => 0, :imageable => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2499',
              :flickr_key => '4186814150', :flickr_secret => 'bcb6dce49c', :level => 1, :imageable => model)

model = Model.create(:name => 'Brasão em madeira maciça mod.1', :position => 104, :delivery => 40, :junction => false,
                      :description => 'Brasão pirogravado e pintado em couro com espuma injetada em base de madeira maciça.')
Size.create(:width => 20, :height => 23, :value => 280, :weight => 1.0, :product => model)
Size.create(:width => 28, :height => 33, :value => 490, :weight => 2.0, :product => model)
Size.create(:width => 39, :height => 43, :value => 750, :weight => 3.5, :product => model)
Photo.create(:flickr_farm => '5', :flickr_server => '4042',
              :flickr_key => '4186148005', :flickr_secret => 'fd04ba305f', :level => 0, :imageable => model)


model = Model.create(:name => 'Brasão em madeira MDF mod.2', :position => 105, :delivery => 40, :junction => false,
                      :description => 'Brasão pirogravado e pintado em couro com espuma injetada em base de madeira MDF.')
Size.create(:width => 20, :height => 23, :value => 280, :weight => 1.0, :product => model)
Size.create(:width => 28, :height => 33, :value => 490, :weight => 2.0, :product => model)
Size.create(:width => 39, :height => 43, :value => 750, :weight => 3.5, :product => model)
Photo.create(:flickr_farm => '5', :flickr_server => '4005',
              :flickr_key => '4186907898', :flickr_secret => '744604b949', :level => 0, :imageable => model)


model = Model.create(:name => 'Brasão em madeira maciça mod.3', :position => 106, :delivery => 40, :junction => false,
                      :description => 'Brasão pirogravado e pintado em couro com espuma injetada em base de madeira maciça.')
Size.create(:width => 20, :height => 23, :value => 280, :weight => 1.0, :product => model)
Size.create(:width => 28, :height => 33, :value => 490, :weight => 2.0, :product => model)
Size.create(:width => 39, :height => 43, :value => 750, :weight => 3.5, :product => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2576',
              :flickr_key => '4186907258', :flickr_secret => 'faf6f9b018', :level => 0, :imageable => model)


model = Model.create(:name => 'Brasão em bronze', :position => 107, :delivery => 60, :junction => false,
                      :description => 'Brasão em bronze com base laqueada.')
Size.create(:width => 14, :height => 20, :value => 480, :weight => 1.0, :product => model)
Size.create(:width => 20, :height => 24, :value => 890, :weight => 1.5, :product => model)
Size.create(:width => 24, :height => 30, :value => 2300, :weight => 2.0, :product => model)
Size.create(:width => 39, :height => 43, :value => 4300, :weight => 3.0, :product => model)
Photo.create(:flickr_farm => '3', :flickr_server => '2607',
              :flickr_key => '4186100871', :flickr_secret => '4ec7bd93f2', :level => 0, :imageable => model)


#SOUVENIRS
souvenir = Souvenir.create(:name => 'Soldado médio', :position => 1, :delivery => 0, :description => 'Soldado completo feito em zamak (tipo de metal), em base de madeira e pintado à mão.')
Size.create(:width => 5, :height => 10, :value => 25, :weight => 0.2, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2772',
              :flickr_key => '4220551492', :flickr_secret => '67ced4fbb8', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '5', :flickr_server => '4049',
              :flickr_key => '4219788537', :flickr_secret => '26611cd946', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2787',
              :flickr_key => '4223407309', :flickr_secret => '821bec1da9', :level => 1, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Soldado grande', :position => 2, :delivery => 0, :description => 'Soldado completo feito em zamak (tipo de metal), banhado com metal envelhecido, em base de madeira e com viseira articulada.')
Size.create(:width => 5, :height => 16, :value => 65, :weight => 0.5, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '5', :flickr_server => '4070',
              :flickr_key => '4223206499', :flickr_secret => 'b5378d4972', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '5', :flickr_server => '4072',
              :flickr_key => '4223207475', :flickr_secret => '098dfaee6a', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '5', :flickr_server => '4011',
              :flickr_key => '4223221251', :flickr_secret => '17e5f0f66f', :level => 2, :imageable => souvenir)
              
souvenir = Souvenir.create(:name => 'Cavaleiro modelo 1', :position => 3, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 15, :height => 15, :value => 45, :weight => 0.5, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2555',
              :flickr_key => '4088548432', :flickr_secret => 'e2170a3c42', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2654',
              :flickr_key => '4087790643', :flickr_secret => '01e2da1c1c', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2474',
              :flickr_key => '4088549968', :flickr_secret => '63ebfe346c', :level => 2, :imageable => souvenir)
            
souvenir = Souvenir.create(:name => 'Cavaleiro modelo 2', :position => 4, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 15, :height => 15, :value => 45, :weight => 0.5, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2657',
              :flickr_key => '4088580324', :flickr_secret => '8125cb850a', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2496',
              :flickr_key => '4087825067', :flickr_secret => '8582a8d1e2', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2700',
              :flickr_key => '4088585988', :flickr_secret => 'e7b63f4b70', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 3', :position => 5, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 15, :height => 15, :value => 45, :weight => 0.5, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2522',
              :flickr_key => '4088031983', :flickr_secret => 'b1e9dd0ae6', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2491',
              :flickr_key => '4088033735', :flickr_secret => '6791c62e0e', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2779',
              :flickr_key => '4088034977', :flickr_secret => '87337c301a', :level => 2, :imageable => souvenir)
            
souvenir = Souvenir.create(:name => 'Cavaleiro modelo 4', :position => 6, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 15, :height => 15, :value => 45, :weight => 0.5, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '3261',
              :flickr_key => '4088035687', :flickr_secret => 'fe61023b34', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2710',
              :flickr_key => '4088037109', :flickr_secret => '2ea7f00373', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2795',
              :flickr_key => '4088795260', :flickr_secret => '95bcbe3d99', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 5', :position => 7, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 12, :height => 13, :value => 30, :weight => 0.4, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2532',
              :flickr_key => '4088037997', :flickr_secret => 'f1a172b695', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2635',
              :flickr_key => '4088797918', :flickr_secret => 'fcb3d4212d', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2508',
              :flickr_key => '4088040319', :flickr_secret => '93231e268c', :level => 2, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2690',
              :flickr_key => '4088042157', :flickr_secret => '65abb4780c', :level => 3, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 6', :position => 8, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 12, :height => 13, :value => 30, :weight => 0.4, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2731',
              :flickr_key => '4094728468', :flickr_secret => '9fdcb75548', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2654',
              :flickr_key => '4088804418', :flickr_secret => 'd5bb207083', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '1', :flickr_server => '120',
              :flickr_key => '4088044947', :flickr_secret => 'b0fba38563', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 7', :position => 9, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 12, :height => 13, :value => 30, :weight => 0.4, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2457',
              :flickr_key => '4088046297', :flickr_secret => '05b444b39d', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2760',
              :flickr_key => '4088805812', :flickr_secret => '4f4f846f09', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2588',
              :flickr_key => '4088806948', :flickr_secret => 'f7e05bac90', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 8', :position => 10, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 9, :height => 12, :value => 25, :weight => 0.3, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2672',
              :flickr_key => '4088807932', :flickr_secret => 'c5089623a6', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2741',
              :flickr_key => '4088050515', :flickr_secret => '6f11a61446', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2695',
              :flickr_key => '4088049513', :flickr_secret => 'e74968c954', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 9', :position => 11, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 9, :height => 12, :value => 25, :weight => 0.3, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2736',
              :flickr_key => '4088811798', :flickr_secret => '3d7457a1c2', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2648',
              :flickr_key => '4088812446', :flickr_secret => '67b65211e1', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2617',
              :flickr_key => '4088810812', :flickr_secret => '6229f18622', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 10', :position => 12, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 9, :height => 12, :value => 25, :weight => 0.3, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '4', :flickr_server => '3657',
              :flickr_key => '4088813474', :flickr_secret => '1b727208d9', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '1', :flickr_server => '64',
              :flickr_key => '4088815406', :flickr_secret => 'b8c7ee62bc', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2783',
              :flickr_key => '4088057881', :flickr_secret => '0db0a7d0ce', :level => 2, :imageable => souvenir)

souvenir = Souvenir.create(:name => 'Cavaleiro modelo 11', :position => 13, :delivery => 0, :description => 'Cavaleiro medieval feito em resina e pintado a mão.')
Size.create(:width => 9, :height => 12, :value => 25, :weight => 0.3, :item_count => 3, :product => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2584',
              :flickr_key => '4088060633', :flickr_secret => '96963df428', :level => 0, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2583',
              :flickr_key => '4088058755', :flickr_secret => '4105d71391', :level => 1, :imageable => souvenir)
Photo.create(:flickr_farm => '3', :flickr_server => '2571',
              :flickr_key => '4088818686', :flickr_secret => '6791670b4b', :level => 2, :imageable => souvenir)

#CUTELARIA
cutler = Cutler.create(
  :name => 'Daniel Jaggi', :phone => '(54)3282.1705', :place => 'Canela (RS)', :position => 1,
  :description => 'Jovem artesão que desenvolveu um estilo próprio. Desde 1998, fabrica facas de sobrevivência e espadas, usando aço de lâminas de serras antigas e de motosserras. Destaque especial para suas espadas estilo Viking e as orientais Katanas.<b>Aceita encomendas</b>'
)
Photo.create(:flickr_farm => '4', :flickr_server => '3489',
              :flickr_key => '3696234793', :flickr_secret => '879857dba7', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2489',
              :flickr_key => '4153860045', :flickr_secret => '74f3047d0d', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Nelson Lima e Rogério Lima', :phone => '(51)8119.8081', :place => 'Novo Hamburgo (RS)', :position => 1,
  :description => 'Nelson Henrique Lima, bisneto de ferreiros, fez sua primeira faca em 1954 e nunca mais parou. Usando metais nobres, aços e molas, com cabos de chifres de cervos e talas de madeira, confecciona as mais lindas facas campeiras do RS. Suas facas são apreciadas pelos maiores colecionadores do Brasil e do exterior. Dando continuidade ao seu trabalho, seu filho, Rogério Inácio Lima, aprendeu, ainda menino, a arte da cutelaria.'
)
Photo.create(:flickr_farm => '4', :flickr_server => '3576',
              :flickr_key => '3697023628', :flickr_secret => 'e734acc368', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2524',
              :flickr_key => '4154621400', :flickr_secret => '6d338faeb6', :level => 1, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2590',
              :flickr_key => '4154621554', :flickr_secret => 'bb615037bd', :level => 2, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Sr. Wolmir Tedesco', :site => 'http://www.accialama.com.br', :phone => '(54)313.0343', :place => 'Passo Fundo (RS)', :position => 1, 
  :description => 'Cuteleiro desde 1970, foi fundador da antiga Metalaço (cutelaria que se projetou no mercado). Em 1995, Fundou a Accialama, introduzindo novos produtos de aço Inox. É pioneiro na arte da fabricação de facas com cabos de osso. Além disso cria facões, facões de selva, espetos, grelhas, machados e espadas medievais.'
)
Photo.create(:flickr_farm => '4', :flickr_server => '2535',
              :flickr_key => '3696236853', :flickr_secret => 'fc711e1d4a', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2522',
              :flickr_key => '4154641114', :flickr_secret => '698a68be47', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Medeiros', :site => 'http://www.facasmedeiros.com.br', :email => 'facasmedeiros@turbo.com.br', :place => 'Tramandaí (RS)', :position => 1,
  :description => 'A família Medeiros tem 100 anos de tradição, na confecção de facas artesanais em aço carbono. Sua história teve início na vila Treze de Janeiro (município de São Borja, hoje, Santo Antônio das Missões), onde, em 1907 o patriarca Porfirio de Souza Medeiros, juntamente com seus filhos, começou a fabricar em forja de fole pequenos utensílios para a lida no campo. Hoje, a tradição de criar as melhores facas gaúchas é mantida por Paulo e Valério Medeiros.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2560',
              :flickr_key => '4189317246', :flickr_secret => '0f051e30e9', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2783',
              :flickr_key => '4153884673', :flickr_secret => 'c4a23bebf1', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Miguel Cuteleiro', :phone => '(53)9967.5626', :email => 'miguelcuteleiro@hotmail.com', :place => 'Bagé (RS)', :position => 1,
  :description => 'José Miguel Morales de Oliveira, ou simplesmente Miguel Cuteleiro, vem de uma família de ferreiros da cidade de Bagé, sendo, sua especialidade, facas e facões.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2489',
              :flickr_key => '3696227997', :flickr_secret => 'b6665b526e', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2648',
              :flickr_key => '4153860783', :flickr_secret => '5b84187da0', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Martinho Pereira', :phone => '(55)223.6912', :place => 'Santa Maria (RS)', :position => 1,
  :description => 'Artesão cuteleiro que vem de uma família de ferreiros. Confecciona belas facas campeiras com acabamento primoroso.<b>Aceita encomendas</b>'
)
Photo.create(:flickr_farm => '4', :flickr_server => '3463',
              :flickr_key => '3696232415', :flickr_secret => '671ec61c42', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2755',
              :flickr_key => '4154621936', :flickr_secret => '96ccaafafc', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Irmãos Verdi (V & V)', :phone => '(55)9136.0998', :place => 'Rosário do Sul (RS)', :position => 1,
  :description => 'Cuteleiros de mão cheia, confeccionam facas especiais com acabamento refinado. Os irmãos Rafael e Alessandro Verdi trabalham juntos e vêm de uma família de ferreiros.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2500',
              :flickr_key => '4154681256', :flickr_secret => '80055e6329', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '4', :flickr_server => '3656',
              :flickr_key => '3697022016', :flickr_secret => 'e0caaeee55', :level => 1, :imageable => cutler)
              

cutler = Cutler.create(
  :name => 'Camacho Knives', :phone => '(21)2293.2717 - (21)9938.3266', :site => 'http://www.camachoknives.com.br', :email => 'camacho@camachoknives.com.br', :place => 'Rio de Janeiro (RJ)', :position => 1,
  :description => 'José Marcio Camacho começou a fazer cutelaria por hobby em 1999, desenvolvendo seu próprio estilo. Em 2001 fez um curso de cutelaria para aprimorar seu trabalho. Aceita encomendas.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2551',
              :flickr_key => '3696225899', :flickr_secret => '8e322f5b7c', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2722',
              :flickr_key => '4153860519', :flickr_secret => 'caa2d47a43', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Della Rippa', :phone => '(11)9192.3148', :email => 'mariodellarippa@terra.com.br', :place => 'São Paulo (SP)', :position => 1,
  :description => 'Mário Nicola Della Rippa é especializado em restauração de carros e preparador de motores. Mas um de seus hobbies sempre foi a cutelaria, com a qual presenteava seus amigos, com facas como esta em estilo Bowie, com cabo de laranjeira. Hoje, dedica-se integralmente a cutelaria. <b>Aceita encomendas</b>.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2632',
              :flickr_key => '4188560257', :flickr_secret => '269d20d2d2', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2455',
              :flickr_key => '3697052634', :flickr_secret => '0c760cd772', :level => 1, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2499',
              :flickr_key => '3696246523', :flickr_secret => '354fdbd5bc', :level => 2, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2515',
              :flickr_key => '4188559617', :flickr_secret => '58ac77b204', :level => 2, :imageable => cutler)


cutler = Cutler.create(
  :name => '"Mestre Carvalho"', :phone => '(11)4033.7951 - (11)9554.8488', :place => 'São Paulo (SP)', :position => 1,
  :description => 'A paixão pelas facas, em Henrique Martins Carvalho, começou ainda criança, nos meados de 1967. Seu trabalho prima pela alta qualidade e rara beleza. Fez cursos de torneiro mecânico no Aços Villares onde aprendeu os segredos da forja e da têmpera. Hoje, administra cursos básicos para cuteleiros. <b>Aceita encomendas</b>.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2212',
              :flickr_key => '3696231451', :flickr_secret => 'f38cf528de', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2559',
              :flickr_key => '4154621720', :flickr_secret => '9b87feb1d2', :level => 1, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2544',
              :flickr_key => '4154621652', :flickr_secret => '36c3e8e139', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Pazzini', :place => '(PR)', :position => 1,
  :description => 'Tradição no trabalho com facas especiais, passada de pai para filho. Foto de uma faca em aço inox, estilo utilitária, com cabo de Damasco Argentino de cor alaranjada.'
)
Photo.create(:flickr_farm => '4', :flickr_server => '3424',
              :flickr_key => '3696218353', :flickr_secret => '5d971ff55a', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2637',
              :flickr_key => '3697029422', :flickr_secret => 'd98a092312', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => 'Ballestra Lantino e Artele', :phone => '+39 0184 21 5228', :email => 's.ballestra@libero.it', :place => 'Itália', :position => 1,
  :description => 'Damasco de alta qualidade e espadas "custom" de grande valor artístico.'
)
Photo.create(:flickr_farm => '3', :flickr_server => '2783',
              :flickr_key => '4188558909', :flickr_secret => 'b22a8e41b5', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2601',
              :flickr_key => '4153951539', :flickr_secret => '9604cb6ef2', :level => 1, :imageable => cutler)


cutler = Cutler.create(
  :name => "Mariano Craig's", :phone => '(51)9179.5862 - (51)4112.0289', :site => 'http://www.craigs-medievalsword.com', :place => 'Novo Hamburgo (RS)', :position => 1,
  :description => "Cuteleiro descendente de escocêses, do clã dos Craig's, radicado no Brasil, confecciona espadas históricas e cinematográficas, adagas, escudos, machados, cachimbos que são réplicas perfeitas das originais."
)
Photo.create(:flickr_farm => '3', :flickr_server => '2542',
              :flickr_key => '4189319512', :flickr_secret => '9292a21e28', :level => 0, :imageable => cutler)
Photo.create(:flickr_farm => '4', :flickr_server => '3602',
              :flickr_key => '3696288169', :flickr_secret => '2145ac4340', :level => 1, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2323',
              :flickr_key => '3696293351', :flickr_secret => '03773c984b', :level => 2, :imageable => cutler)
Photo.create(:flickr_farm => '5', :flickr_server => '4008',
              :flickr_key => '4189320910', :flickr_secret => '5ea0fd2d98', :level => 3, :imageable => cutler)
Photo.create(:flickr_farm => '3', :flickr_server => '2641',
              :flickr_key => '4188556841', :flickr_secret => '5fd1593484', :level => 3, :imageable => cutler)
              
#Museum Comment
MuseumComment.create(
  :approved => true, :name => 'Maximiliano Guzenski', :email => 'max@guzenski.com.br', :rate => 5,
  :message => "Expetacular, meu filho de 6 anos se chama GEORGE, estivemos visitando o museu e é fantástico, um trabalho desta perfeição deveria ser mostrado ao mundo e todos deveriam colocar na lista de locais para conhecer antes de morrer, fabuloso."
)
MuseumComment.create(
  :approved => true, :name => 'Paulo da Silva', :email => 'paulo@silva.com.br', :rate => 5,
  :message => "Olá pessoal, tive o enorme prazer de conhecer o Museu Medieval e achei magnifíco a recepção, o atendimento a conversa com o proprietário. Parabéns."
)

#User e Client
client = Client.new(:name => "Maximiliano Guzenski", :genrer => "M", :phone_ddd => 51, :phone_number => 32863697)
client.addresses.build :street => "1", :number => 1, :neighborhood => "1", :zip_code => "95670000", :city => "Porto Alegre", :country_state => "RS"
client.save!

User.create(:email => "max@guzenski.com.br", :password => "123456", :password_confirmation => "123456", :client => client)

#Client searchs
ClientSearch.create(:client => client, :surname_1 => 'Guzenski', :surname_2 => 'Guzinski', :status => 'pending')
ClientSearch.create(:client => client, :surname_1 => 'Ferreira', :surname_2 => 'Silva', :status => 'pending')
ClientSearch.create(:client => client, :surname_1 => 'Machado', :status => 'approved')
ClientSearch.create(:client => client, :surname_1 => 'Pereira', :status => 'approved')
ClientSearch.create(:client => client, :surname_1 => 'Outro', :status => 'approved')
ClientSearch.create(:client => client, :surname_1 => 'Pereira', :status => 'completed')


