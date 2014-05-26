# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Eventos")
Category.create(name: "Notícias FCT")
Category.create(name: "Avisos Pedagógicos")
Category.create(name: "Investigação e Trabalho")
Category.create(name: "Reportagens")

Content.create(title: "Aula de Seminário em Micro e Nanotecnologia - 16 Maio 2014", description: "Foi na categoria “Inovação” que a equipa “SocketHive”, composta por três alunos do Departamento de Engenharia Electrotécnica( Alexandra Videira, João Aires e João Barata Oliveira) viu o seu projeto premiado.Esta equipa apresentou uma solução de monitorização de consumo de energia elétrica, que permite ao seu utilizador tanto controlar", category_id: "2")
Content.create(title: "Professora Ana Lobo distinguida pela 'Royal Society of Chemistry' de Londres", description: "Antigo estudante do Mestrado Integrado em Engenharia Civil - Perfil de Geotecnia, Gonçalo Faustino, foi distinguido com o Prémio Jovens Geotécnicos em Língua Inglesa da Sociedade Portuguesa de Geotecnia (SPG).
								O prémio é atribuído anualmente pela SPG. O concurso consiste num artigo submetido para o efeito, avaliado por um júri", category_id: "2")