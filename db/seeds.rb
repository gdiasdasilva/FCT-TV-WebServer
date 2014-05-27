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

Content.create(title: "Aula de Seminário em Micro e Nanotecnologia - 16 Maio 2014",
               description: "Será proferida pelo Professor Doutor José Carlos Caldeira (Director do INESC Porto – Instituto de Engenharia de Sistemas e Computadores do Porto e Administrador Executivo do PRODUTECH – Pólo das Tecnologias de Produção. É membro do High Level Group da Plataforma Tecnológica MANUFUTURE e Chairman do seu National and Regional Tecnology Platforms Group. É membro do Board da EFFRA - European Factories of the Future Research Association e Secretário-geral do Fórum MANUFUTURE Portugal. É ainda Membro do Board of Directors do ISPIM – International Society for Professional Innovation Management. Desde 2012, é perito em RIS3 da DG REGIO.
Pelas 13H30 no anfiteatro Leopoldo Guimarães - CENIMAT, com o tema 'Da Investigação à Competitividade Económica e ao Impacto Social: o papel das Plataformas Tecnológicas na cobertura do ciclo de Inovação'.
Este seminário será proferido à porta aberta para quem estiver interessado em assistir.

Resumo:
Nunca como agora, a Investigação e a Inovação tiveram um papel tão relevante na competitividade e sustentabilidade económica e social de países e regiões, setores e empresas. Complementarmente, a internacionalização e a cooperação e coopetição tornaram-se práticas necessárias e correntes, também nas atividades de I&D e Inovação, como forma de aceder às fontes de conhecimento mais relevantes e de partilhar custos, riscos e benefícios.
Um sistema de inovação eficiente e eficaz requer também uma articulação entre setores (maduros e emergentes) e empresas (grandes e pequenas), sistema científico e tecnológico, entidades de educação e formação, e ainda os organismos públicos mais diretamente relacionados com essas áreas. Para além disso, coloca-se também o desafio de assegurar um maior alinhamento e complementaridade das políticas, programas e iniciativas a nível europeu e nacional/regional.
A apresentação abordará estas questões, utilizando como exemplo ilustrativo o trabalho desenvolvido no âmbito da Plataforma Tecnológica MANUFUTURE e das suas iniciativas, a nível europeu e nacional.",
               category_id: "2", video: "https://www.youtube.com/v/watch?v=cDDrB7XmUjA")

Content.create(title: "Professora Ana Lobo distinguida pela 'Royal Society of Chemistry' de Londres",
               description: "Antigo estudante do Mestrado Integrado em Engenharia Civil - Perfil de Geotecnia, Gonçalo Faustino, foi distinguido com o Prémio Jovens Geotécnicos em Língua Inglesa da Sociedade Portuguesa de Geotecnia (SPG). O prémio é atribuído anualmente pela SPG. O concurso consiste num artigo submetido para o efeito, avaliado por um júri", category_id: "2")