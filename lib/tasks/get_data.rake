task :import => :environment do
  counterNews = 0
  counterEvents = 0

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
    if (Content.find_by_title(n["title"]).nil?)
      Content.create!(user_id: 1, category_id: 2, title: n["title"], description: description, created_at: n["date"])
      counterNews = counterNews + 1
    end
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
    if ((Content.find_by_title(title)).nil?)
      Content.create!(user_id: 1, category_id: 1, title: title, description: "A " + title + " irá ser apresentada por " + p["author"] + ".", event_datetime: p["date"],event_site: p["department"] + " - " + p["classroom"])
      counterEvents = counterEvents + 1
    end
  end

  puts "Added " + counterNews.to_s + " news!"
  puts "Added " + counterEvents.to_s + " events!"

end