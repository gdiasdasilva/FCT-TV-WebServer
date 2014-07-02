ActsAsTaggableOn::Tag.create!([
  {name: "empreendorismo", taggings_count: 1},
  {name: "fct/unl", taggings_count: 4},
  {name: "informatica", taggings_count: 1},
  {name: "caise", taggings_count: 1},
  {name: "di", taggings_count: 1},
  {name: "dissertação", taggings_count: 1},
  {name: "google", taggings_count: 1},
  {name: "glasses", taggings_count: 1},
  {name: "mit", taggings_count: 1},
  {name: "spring", taggings_count: 1},
  {name: "day", taggings_count: 1},
  {name: "bolsas", taggings_count: 1},
  {name: "dsf", taggings_count: 0},
  {name: "sdfs", taggings_count: 0}
])
ActsAsTaggableOn::Tagging.create!([
  {tag_id: 1, taggable_id: 1, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 1, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 3, taggable_id: 2, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 4, taggable_id: 2, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 5, taggable_id: 2, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 3, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 6, taggable_id: 3, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 4, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 7, taggable_id: 4, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 8, taggable_id: 4, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 9, taggable_id: 4, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 5, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 10, taggable_id: 5, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 11, taggable_id: 5, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 12, taggable_id: 6, taggable_type: "Content", tagger_id: nil, tagger_type: nil, context: "tags"}
])

ActsAsVotable::Vote.create!([
  {votable_id: 3, votable_type: "Content", voter_id: 2, voter_type: "User", vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_id: 14, votable_type: "Content", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 12, votable_type: "Content", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 14, votable_type: "Content", voter_id: 4, voter_type: "User", vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_id: 13, votable_type: "Content", voter_id: 4, voter_type: "User", vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_id: 11, votable_type: "Content", voter_id: 4, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 11, votable_type: "Content", voter_id: 3, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 14, votable_type: "Content", voter_id: 3, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 8, votable_type: "Content", voter_id: 4, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1}
])

User.create!([
   {email:"admin@campustv.pt", password: "password", password_confirmation: "password", name: "Administrador", is_teacher: false},
   {email: "goncalo@campustv.pt", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, name: "Gonçalo Dias da Silva", is_teacher: false, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-29 13:53:11", last_sign_in_at: "2014-05-29 13:53:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
   {email: "joao@campustv.pt", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, name: "João Francisco Pinto", is_teacher: false, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-28 23:25:26", last_sign_in_at: "2014-05-28 23:25:26", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
   {email: "rui@campustv.pt", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, name: "Rui Carvalho", is_teacher: false, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-29 13:55:15", last_sign_in_at: "2014-05-29 13:55:15", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
   {email: "jorge@campustv.pt", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, name: "Jorge Lampreia", is_teacher: true, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2014-05-29 13:53:51", last_sign_in_at: "2014-05-28 23:44:39", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])

Category.create!([
 {name: "Eventos"},
 {name: "Notícias FCT"},
 {name: "Avisos Pedagógicos"},
 {name: "Investigação e Trabalho"},
 {name: "Diversos"}
])

Content.create!([
  {title: "TEDxLisboa - Empreendorismo na Reciclagem", description: "<p>\"Entrepreneurship in Recycling\" -</p>\r\n\r\n<p>Joaquim Casado is 58 years old and is a native from Ericeira. He's a local industrial businessman in the furniture and activity tours area.</p>\r\n\r\n<p>He was President of Ericeira's Local Council (JFE), elected\r\nin lists of the PSD (Democrat Social Party) during three terms. He started his work as mayor with a gardener, a gravedigger and two administratives, a wheelbarrow, a shovel and a broom and a budget of € 20,000.\r\nAt the end of the first term, JFE had six heritagevehicles, two retro-excavator machines and 18 employees.</p>\r\n\r\n<p>Due to Incompatibilities, decided not to reapply for a second mandate but, after the pressure from the local population and area party policy, returned to politics again after four years, where he served two terms.</p>\r\n\r\n<p>In carrying out their municipal functions, and Social Action and the Environment were two major concerns. The projects that created and developed in Ericeira in these areas, brough Ericeira to the map as a cutting edge on issues such as recycling.</p>", category_id: 5, video: "https://www.youtube.com/v/watch?v=rbGcwY2ChFk", limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "Investigadores do CITI @ NOVA LINCS/Departamento de Informática agraciados com o Prémio para o melhor artigo na conferência CAiSE'2014", description: "<p>Os investigadores do CITI @ NOVA LINCS Catarina Gralha, Miguel Goulão e João Araújo, membros do grupo NOVA LINCS Software Systems, foram agraciados o Prémio para o melhor artigo na conferência CAiSE 2014. O trabalho, intitulado Identificação de Oportunidades de Melhoria da Modularidade em Modelos de Requisitos orientados a Objetivos, desenvolve um conjunto de métricas e suporte de ferramentas associado, destinados a medir e analisar a complexidade dos modelos de objectivos. Os modelos de objectivos são amplamente adotados como uma forma de expressar requisitos de sistemas de software. O output da análise técnica proposta pode ser utilizado para sugerir melhores maneiras de modularizar as especificações de requisitos. A Caise é uma conferência de topo na área dos sistemas de informação.</p>", category_id: 2, video: nil, limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "Dissertação: Ressonância magnética nuclear com recurso a transreceptor rádio controlado por software", description: "<p>Provas de Mestrado Integrado em Engenharia Electrotécnica e de Computadores, António João Matos Gomes.</p>", category_id: 1, video: nil, limit_date: nil, event_site: "Edifício X - Sala 1.15", event_datetime: "2014-07-01 10:00:00", user_id: "2", image: nil, cached_votes_total: 1, cached_votes_score: -1, cached_votes_up: 0, cached_votes_down: 1, cached_weighted_score: -1},
  {title: "Curso \"Design Driven Innovation workshop with Google Glasses\"", description: "<p>No contexto da colaboração entre a Embaixada dos Estados Unidos e a Faculdade de Ciências e Tecnologia da UNL, vamos receber uma incitava do MIT Mobile Experience Lab. Trata-se de um curso intitulado \"Design Driven Innovation workshop with Google Glasses\" sob a coordenação do Dr. Federico Casalegno do MIT e seus colaboradores.</p>\n\n<p>É um curso intensivo, a realizar nas instalações da FCT, nos dias 30 de Junho (16:00 - 19:00) e nos 1 e 2 de Julho de 2014 (9:00 - 19:00). Os alunos deverão estar organizados em grupos de 3 (constituídos no primeiro dia). A componente Hands-on será sobre a plataforma Android. Os alunos deverão trazer o seu computador para o efeito (mais instruções serão dadas).</p>", category_id: 3, video: "https://www.youtube.com/v/watch?v=uh-liQDE3cM", limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "2nd FCT Science Spring Day", description: "<p>We welcome you all to the second FCT Science Spring Day that will take place on 25th June. Again, the meeting is dedicated to connecting the FCT scientific community for the benefit of science in a more dynamic and interactive campus.</p>\r\n\r\n<p>The event will bring together researchers from the different Departments and Research Centers, providing them an opportunity to meet and discuss current and future scientific interests, bringing new ideas and fostering future collaborations.</p>\r\n\r\n<p>The Organizing Committee,</p>\r\n\r\n<p>Elvira Fortunato - coordinator<br/>\r\nMaria João Romão\r\nLuís Caires\r\nPaulo Limão Vieira</p>", category_id: 1, video: nil, limit_date: nil, event_site: "Campus da FCT/UNL", event_datetime: "2014-07-25 00:00:00", user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "Bolsas de Estudo para o Japão (2015-2017)", description: "<p>O governo japonês abriu concurso para a atribuição de bolsas de estudo para os anos académicos de 2015-2017.</p>\n\n<p>O programa destina-se a licenciados/mestres portugueses que queiram realizar um curso de mestrado, doutoramento ou investigação numa universidade japonesa.</p>\n\n<p>Os candidatos deverão ter no mínimo 22 anos de idade e ter nascido a 2 de abril de 1980 ou depois.</p>", category_id: 4, video: nil, limit_date: "2014-08-31", event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "Disciplina de desenvolvimento iOS (Stanford) disponível no iTunes U", description: "<p>Disciplina de desenvolvimento iOS (Stanford) disponível no iTunes U.</p>", category_id: 5, video: nil, limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "Investigadoras da FCT integram a equipa vencedora do Prémio Inovação BLUEPHARMA / Universidade de Coimbra (Edição 2013)", description: "<p>O projecto DeCellMab: Anticorpos trifuncionais e tecnologias baseadas em células dendríticas: uma abordagem combinada à imunoterapia para o cancro venceu a edição 2013 do Prémio Inovação Bluepharma / Universidade de Coimbra.</p>", category_id: 2, video: nil, limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1},
  {title: "Tese: Clearing the cloudy crystall balls: Hybrid modelling for energy and climate change mitigation scenarios – A case study for Portugal", description: "<p>Tese: Clearing the cloudy crystall balls: Hybrid modelling for energy and climate change mitigation scenarios – A case study for Portugal.</p>", category_id: 1, video: nil, limit_date: nil, event_site: "Edifício IV - Sala de Atos", event_datetime: "2014-07-04 10:00:00", user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "Relembrar a Semana do Caloiro 2012", description: "<p>Um vídeo gravado pela AEFCT para ilustrar a Semana do Caloiro de 2012.</p>", category_id: 5, video: "https://www.youtube.com/v/watch?v=yQWLXnuZWOg", limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 0, cached_votes_score: 0, cached_votes_up: 0, cached_votes_down: 0, cached_weighted_score: 0},
  {title: "International Summer School: ENERstore 2014 - Energy Storages for Sustainable Energy Supply", description: "<p>O Curso de Verão, terá lugar em Dresden, nos dias 22 a 27 de Setembro de 2014.\nÉ financiado pelo Governo alemão, existindo a possibilidade de atribuir várias bolsas (totais e parciasi) a estudantes de doutoramento. O prazo para a formalização de candidaturas termina no dia 30 de Junho de 2014.</p>", category_id: 2, video: nil, limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 2, cached_votes_score: 2, cached_votes_up: 2, cached_votes_down: 0, cached_weighted_score: 2},
  {title: "2014, Ano Internacional da Cristalografia!", description: "<p>Tal como decretado pela Assembleia Geral das Nações Unidas, em 2014, comemora-se o Ano Internacional da Cristalografia, a cujas celebrações os Departamentos de Química e Ciência dos Materiais da FCT-UNL se associaram, organizando uma série de Conferências e outros eventos, que decorrerão de Abril 2014 a Abril 2015 e que contam com oradores de enorme prestígio, entre os quais 3 Laureados Nobel: Robert Huber (NOBEL da Química 1989), Ada Yonath (NOBEL da Química 2009) e Brian Kobilka (NOBEL da Química 2012).</p>\n\n<p>Os temas das conferências cobrem várias áreas científicas: Conservação do Património, Química, Ciência dos Materiais, Geologia e Biologia Estrutural.</p>\n\n<p>A escolha dos oradores convidados visa promover uma melhor compreensão do papel da Cristalografia na ciência, nas nossas vidas e no nosso futuro, com a certeza de que o contacto com estes cientistas de reconhecido mérito internacional, será uma oportunidade única para estudantes, professores e investigadores.</p>", category_id: 2, video: nil, limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1},
  {title: "POSMOL 2015", description: "<p>We are very pleased to welcome you in Lisboa and POSMOL 2015 for theXVIII International Workshop on Low-Energy Positron and Positronium Physics&amp;the XIX International Symposium on Electron-Molecule Collisions and Swarms.</p>\n\n<p>POSMOL 2015 permits to achieve a very privileged forum of sharing and developing our scientific expertise of current aspects of positron, positronium and antiproton interactions with electrons, atoms, molecules and solid surfaces, and related topics, as well as electron interactions with molecules in both gaseous and condensed phases. Particular topics include studies of electron interactions with biomolecules, electron induced surface chemistry and the study of plasma processes. Recent developments in the study of swarms are also fully addressed.</p>", category_id: 1, video: nil, limit_date: nil, event_site: "Campus da FCT/UNL", event_datetime: "2015-07-17 00:00:00", user_id: "2", image: nil, cached_votes_total: 1, cached_votes_score: -1, cached_votes_up: 0, cached_votes_down: 1, cached_weighted_score: -1},
  {title: "Cineclube \"The African Queen\", John Huston (1951) - 20 de Maio de 2014", description: "<p>Descrição do CineClube.</p>", category_id: 5, video: nil, limit_date: nil, event_site: "", event_datetime: nil, user_id: "2", image: nil, cached_votes_total: 3, cached_votes_score: 1, cached_votes_up: 2, cached_votes_down: 1, cached_weighted_score: 1}
])

Playlist.create(name: "Playlist")

@contents = Content.all.order('created_at DESC').limit(10)

@contents.each do |c|
  PlaylistItem.create(content_id: c.id)
end