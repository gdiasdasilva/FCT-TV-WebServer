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
            password_confirmation: "password",
            is_teacher: false)

User.create(name: "João Francisco Pinto",
            email: "joao@campustv.pt",
            password: "password",
            password_confirmation: "password",
            is_teacher: false)

User.create(name: "Rui Carvalho",
            email: "rui@campustv.pt",
            password: "password",
            password_confirmation: "password",
            is_teacher: false)

User.create(name: "Jorge Lampreia",
            email: "jorge@campustv.pt",
            password: "password",
            password_confirmation: "password",
            is_teacher: true)

Content.create(user_id: 1, title: "A Professora Ana Aguiar Ricardo da FCT/UNL será representante de Portugal na IUPAC",
               description: "<p>A Professora Ana Aguiar Ricardo do Departamento de Química da FCT/UNL e investigadora do REQUIMTE - Laboratório Associado para a Química Verde foi nomeada representante de Portugal na União Internacional de Química Pura e Aplicada (IUPAC) - Divisão  de Química e Ambiente, para o período 2014/2015.</p><p>A IUPAC tem sido reconhecida como a autoridade mundial em nomenclatura química, terminologia, métodos padronizados de medição, pesos atómicos e muitos outros dados criticamente avaliados. A IUPAC tem conseguido promover a comunicação em todo o mundo no campo das ciências químicas, unindo a química académica e industrial numa linguagem comum.</p><p>A Divisão de Química e Ambiente tem por objectivo avaliar e informar sobre o impacto dos compostos químicos na qualidade dos alimentos e no ambiente.</p>",
               category_id: "2")

Content.create(user_id: 1, title: "Filipa Peleja da FCT da NOVA alcançou o 1º Lugar no ZON DevDays 2015",
               description: "<p>A 'Social NOS' é uma proposta que contempla um novo sistema de chat social-TV que integra novas funcionalidades de aferir o feedback dos telespectadores e novos paradigmas de interação multi-ecrã. Este sistema é integrado com um programa de análise de popularidade de programa<br />Filipa Peleja terá ainda a possibilidade de fazer um estágio de 6 meses na NOS, com formação específica Microsoft, implementando a sua ideia nas atuais plataformas da empresa. </p><p>Filipa Peleja é aluna de doutoramento do grupo de Multimodal Systems, NOVA LINCS / CITI, onde desenvolve investigação no contexto do projeto IMTv, coordenado pelo Professor João Magalhães. O projecto IMTv é liderado pelo CITI / DI FCT UNL, e conta como parceiros o INESC-Porto, a Universidade de Lisboa - FCUL, a University of Texas at Austin, a ZON Multimédia (agora NOS), a DUVIDEO, a RTP, e a FCCN.</p>",
               category_id: "2")

Content.create(user_id: 4, title: "EXPO FCT - 23 de Abril de 2014",
               description: "<p>Vai realizar-se mais uma vez o evento EXPO FCT, uma mostra de Ciência, Tecnologia e Inovação na Faculdade de Ciências e Tecnologia da Universidade Nova de Lisboa (FCT/UNL) no Campus de Caparica a 23 de Abril de 2014, envolvendo todos os Sectores da Faculdade nas várias vertentes científicas e tecnológicas. Esta exposição visa mostrar a Dinâmica Científica desta Instituição Pública de Ensino Superior, assim como os novos exemplos de inovação tecnológica desenvolvidos nesta Faculdade e nos Centros de Investigação Científica aqui alojados.</p> <p>Trata-se de uma iniciativa que tem como objectivo aproximar a realidade Universitária, na sua vertente de Investigação, Inovação e Tecnologia, com a população, em particular com os alunos dos 10º, 11º e 12º anos do Ensino Secundário, tendo uma atenção especial com os familiares dos alunos e os residentes vizinhos ao Campus.</p> <p>Já na sua oitava edição e à semelhança da EXPO FCT 2013, que contou com a presença de cerca de 6000 visitantes, o Campus terá as suas portas abertas ao longo do dia 23 de Abril de 2014. Serão apresentadas mais de 120 experiências e demonstrações científicas, tecnológicas e de índole pedagógico em Laboratórios, adequadas aos alunos do 10º ao 12º anos do Ensino Secundário. Serão feitas visitas guiadas aos Departamentos, prevê-se uma exposição por parte de empresas com algumas das últimas novidades tecnológicas e será apresentada a vida académica na sua vertente mais lúdica com actividades desportivas radicais e a actuação das Tunas e de grupos de Dança e de Teatro, permitindo assim uma melhor visão da vida académica que se desenvolve numa Faculdade e da integração de uma instituição de Ensino Superior na sociedade.</p>",
               video: "http://www.youtube.com/v/watch?v=juVziawQpCU",
               event_site: "Todo o Campus da FCT/UNL",
               event_datetime: DateTime.new(2014,5,30,20),
               category_id: "1")

Content.create(user_id: 2, title: "Aula de Seminário em Micro e Nanotecnologia - 16 Maio 2014",
               description: "<p>Será proferida pelo Professor Doutor José Carlos Caldeira (Director do INESC Porto – Instituto de Engenharia de Sistemas e Computadores do Porto e Administrador Executivo do PRODUTECH – Pólo das Tecnologias de Produção. É membro do High Level Group da Plataforma Tecnológica MANUFUTURE e Chairman do seu National and Regional Tecnology Platforms Group. É membro do Board da EFFRA - European Factories of the Future Research Association e Secretário-geral do Fórum MANUFUTURE Portugal. É ainda Membro do Board of Directors do ISPIM – International Society for Professional Innovation Management. Desde 2012, é perito em RIS3 da DG REGIO.<br />Pelas 13H30 no anfiteatro Leopoldo Guimarães - CENIMAT, com o tema 'Da Investigação à Competitividade Económica e ao Impacto Social: o papel das Plataformas Tecnológicas na cobertura do ciclo de Inovação'.<br />Este seminário será proferido à porta aberta para quem estiver interessado em assistir.</p><p>Resumo:&nbsp;<br />Nunca como agora, a Investigação e a Inovação tiveram um papel tão relevante na competitividade e sustentabilidade económica e social de países e regiões, setores e empresas. Complementarmente, a internacionalização e a cooperação e coopetição tornaram-se práticas necessárias e correntes, também nas atividades de I&amp;D e Inovação, como forma de aceder às fontes de conhecimento mais relevantes e de partilhar custos, riscos e benefícios.<br />Um sistema de inovação eficiente e eficaz requer também uma articulação entre setores (maduros e emergentes) e empresas (grandes e pequenas), sistema científico e tecnológico, entidades de educação e formação, e ainda os organismos públicos mais diretamente relacionados com essas áreas. Para além disso, coloca-se também o desafio de assegurar um maior alinhamento e complementaridade das políticas, programas e iniciativas a nível europeu e nacional/regional.<br />A apresentação abordará estas questões, utilizando como exemplo ilustrativo o trabalho desenvolvido no âmbito da Plataforma Tecnológica MANUFUTURE e das suas iniciativas, a nível europeu e nacional.</p>",
               category_id: "2")

Content.create(user_id: 3, title: "Alunos da FCT da NOVA vencem na 5ª edição do NOVA Idea Competition - Prémio BPI",
               description: "<p>Este ano, 100 alunos da Universidade NOVA de Lisboa participaram no NOVA Idea Competition – Prémio BPI. A sessão final teve lugar no dia 21 de Maio, pelas 17:30 horas, na Reitoria da Universidade NOVA e contou com a participação de 10 equipas finalistas oriundas de 6 Faculdades da Universidade NOVA de Lisboa. BebeBaba, Bookify, Chef for a day, ChromicAds, Course Me Up, Heat it, Honey Me, impacTrip, SWALIP e UVemotion concorreram através de um pitch de 7 minutos onde defenderam os seus projetos. Acompanhados por gestores de topo da AAMBA NOVA/Católica (André Miguel Lopes, Nuno Fradique Vieira, Pedro Nunes, João Paulo Matos, Paulo Mesquita, José Cardoso Matos, Carlos Correia, Carlos Gois, Raquel S. Leite e José Bom) os projectos chegaram ao final do concurso com um grau de qualidade substancialmente superior ao habitual.</p> <p>Venceram esta competição o projeto Uvmotion (João Carlos Batista Pisco (NOVASBE), Manuel de Almeida Eliseu (FCT), Manuel Filipe Vicente (FCT), Rita Dionísio Narciso( FCT)) com o primeiro lugar de 8.000€ do Banco BPI; o projeto Heat it com o segundo lugar (Matilde Pêgo ( FCSH), João Rebelo  (NOVASBE), Filipe Rodrigues (FCT), Luís Guerreiro (NOVASBE)) de 5.000€ do Banco BPI; e o projeto Course me up com o terceiro lugar (Carolina João Da Silva ( FCSH), Pedro Vasconcelos Fernandes (FCT), Nurin Mirzan (ISEGI), Sérgio Ruivo(FCSH)) de 2.000€ do Banco BPI.</p>",
               category_id: "2")

Content.create(user_id: 4, title: "Interrupção de serviços informáticos",
               description: "<p>De forma a realizar uma operação de manutenção no centro de dados da Faculdade, será necessário interromper a prestação de alguns dos serviços informáticos da Faculdade.</p><p>Assim, para que a interrupção desses serviços tenha o menor impacto possível, a intervenção será efetuada durante o próximo fim de semana. De acordo com o plano estabelecido, estão previstas as seguintes interrupções:</p><p>Moodle - Início na 6ª feira, dia 16, às 18h. Prevemos a reposição do serviço até às 18h de Sábado.</p><p>Áreas pessoais de utilizadores em laboratórios - Início na 6ª feira, dia 16, às 18h. Prevemos a reposição do serviço até às 18h de Sábado.</p><p>Clip - Início no Sábado, dia 17, às 13h. Prevemos a reposição do serviço até às 13h de Domingo.</p><p>Agradecemos a vossa compreensão,</p><p>A Divisão de Informática.</p>",
               category_id: "1")