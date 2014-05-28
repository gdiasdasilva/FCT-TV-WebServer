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

User.create(name: "Gonçalo Dias da Silva",
            email: "goncalo@campustv.pt",
            password: "password",
            password_confirmation: "password")

User.create(name: "João Francisco Pinto",
            email: "joao@campustv.pt",
            password: "password",
            password_confirmation: "password")

User.create(name: "Rui Carvalho",
            email: "rui@campustv.pt",
            password: "password",
            password_confirmation: "password")

Content.create(user_id: 1, title: "A Professora Ana Aguiar Ricardo da FCT/UNL será representante de Portugal na IUPAC",
               description: "<p>A Professora Ana Aguiar Ricardo do Departamento de Química da FCT/UNL e investigadora do REQUIMTE - Laboratório Associado para a Química Verde foi nomeada representante de Portugal na União Internacional de Química Pura e Aplicada (IUPAC) - Divisão  de Química e Ambiente, para o período 2014/2015.</p><p>A IUPAC tem sido reconhecida como a autoridade mundial em nomenclatura química, terminologia, métodos padronizados de medição, pesos atómicos e muitos outros dados criticamente avaliados. A IUPAC tem conseguido promover a comunicação em todo o mundo no campo das ciências químicas, unindo a química académica e industrial numa linguagem comum.</p><p>A Divisão de Química e Ambiente tem por objectivo avaliar e informar sobre o impacto dos compostos químicos na qualidade dos alimentos e no ambiente.</p>",
               category_id: "2")

Content.create(user_id: 1, title: "Filipa Peleja da FCT da NOVA alcançou o 1º Lugar no ZON DevDays 2015",
               description: "<p>A 'Social NOS' é uma proposta que contempla um novo sistema de chat social-TV que integra novas funcionalidades de aferir o feedback dos telespectadores e novos paradigmas de interação multi-ecrã. Este sistema é integrado com um programa de análise de popularidade de programa<br />Filipa Peleja terá ainda a possibilidade de fazer um estágio de 6 meses na NOS, com formação específica Microsoft, implementando a sua ideia nas atuais plataformas da empresa. </p><p>Filipa Peleja é aluna de doutoramento do grupo de Multimodal Systems, NOVA LINCS / CITI, onde desenvolve investigação no contexto do projeto IMTv, coordenado pelo Professor João Magalhães. O projecto IMTv é liderado pelo CITI / DI FCT UNL, e conta como parceiros o INESC-Porto, a Universidade de Lisboa - FCUL, a University of Texas at Austin, a ZON Multimédia (agora NOS), a DUVIDEO, a RTP, e a FCCN.</p>",
               category_id: "2")

Content.create(user_id: 2, title: "Aula de Seminário em Micro e Nanotecnologia - 16 Maio 2014",
               description: "<p>Será proferida pelo Professor Doutor José Carlos Caldeira (Director do INESC Porto – Instituto de Engenharia de Sistemas e Computadores do Porto e Administrador Executivo do PRODUTECH – Pólo das Tecnologias de Produção. É membro do High Level Group da Plataforma Tecnológica MANUFUTURE e Chairman do seu National and Regional Tecnology Platforms Group. É membro do Board da EFFRA - European Factories of the Future Research Association e Secretário-geral do Fórum MANUFUTURE Portugal. É ainda Membro do Board of Directors do ISPIM – International Society for Professional Innovation Management. Desde 2012, é perito em RIS3 da DG REGIO.<br />Pelas 13H30 no anfiteatro Leopoldo Guimarães - CENIMAT, com o tema 'Da Investigação à Competitividade Económica e ao Impacto Social: o papel das Plataformas Tecnológicas na cobertura do ciclo de Inovação'.<br />Este seminário será proferido à porta aberta para quem estiver interessado em assistir.</p><p>Resumo:&nbsp;<br />Nunca como agora, a Investigação e a Inovação tiveram um papel tão relevante na competitividade e sustentabilidade económica e social de países e regiões, setores e empresas. Complementarmente, a internacionalização e a cooperação e coopetição tornaram-se práticas necessárias e correntes, também nas atividades de I&amp;D e Inovação, como forma de aceder às fontes de conhecimento mais relevantes e de partilhar custos, riscos e benefícios.<br />Um sistema de inovação eficiente e eficaz requer também uma articulação entre setores (maduros e emergentes) e empresas (grandes e pequenas), sistema científico e tecnológico, entidades de educação e formação, e ainda os organismos públicos mais diretamente relacionados com essas áreas. Para além disso, coloca-se também o desafio de assegurar um maior alinhamento e complementaridade das políticas, programas e iniciativas a nível europeu e nacional/regional.<br />A apresentação abordará estas questões, utilizando como exemplo ilustrativo o trabalho desenvolvido no âmbito da Plataforma Tecnológica MANUFUTURE e das suas iniciativas, a nível europeu e nacional.</p>",
               category_id: "2")