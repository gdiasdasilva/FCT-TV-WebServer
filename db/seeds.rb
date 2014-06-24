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
  {name: "Reportagens"}
])
