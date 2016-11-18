require 'json'

slides=JSON.parse(File.read("slides.txt"))
posts=JSON.parse(File.read("posts.txt"))

slides.each_pair do |k,v|
	p=posts[k]
	if p.nil?
		puts "Missing post for #{v}"
		exit
	end
end

slides.each_pair do |k,v|
	p = "../_posts/"+posts[k]
	puts "Update #{p}"
	f=File.open(p,"a")
	f.puts "\n\n[Talk Slides](/slides/#{v})"
	f.close
end
