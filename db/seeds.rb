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

noticiasPath = "#{Rails.root}/public/noticias.json"
provasPath = "#{Rails.root}/public/provas.json"

noticias = JSON.parse(File.read(noticiasPath))
provas = JSON.parse(File.read(provasPath))

noticias.each do |n|
  description = ""
  if n["description"].length > 2
    for i in 0..n["description"].length-1
       description = description + n["description"][i]
    end
  else
    description = n["description"][0]
  end
  Content.create!(user_id: 1, category_id: 2, title: n["title"][0], description: description)
end

provas.each do |p|
  title = ""
  if p["title"].length > 2
    for i in 0..p["title"].length-1
      title = title + p["title"][i]
    end
  else
    title = p["title"][0]
  end
  Content.create!(user_id: 1, category_id: 1, title: title, description: "A " + title + " irá ser apresentada por " + p["author"] + ".", event_datetime: p["date"],event_site: p["department"] + " - " + p["classroom"])
end