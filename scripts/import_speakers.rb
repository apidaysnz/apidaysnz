require 'yaml'
require 'erb'


class Speaker
	attr_accessor :name, :title, :affiliation, :bio_link, :picture

	def initialize(map)
		speaker_template = File.read('speaker.erb')
		@renderer = ERB.new(speaker_template)
		@bio_renderer = ERB.new(File.read('bio.erb'))
	
		@name=map['Name']
		@title=map['Title']
		@affiliation = map['Affiliation']
		@bio_link = map['BioLink']
		@picture = map['Picture']
		@bio = map['Bio']
	end

	def render_html
		b = binding
		@renderer.result(b)
	end

	def write_bio
		n = @bio_link.length
		outfile = @bio_link[1,n].gsub("/","-").gsub(".html",".md")
		b = binding
		bio = @bio_renderer.result(b)
		f = File.open("../_posts/"+outfile,"w")
		f.puts(bio)
	end
	
end

f = File.read('speakers.yml')
y = YAML.load(f)

row = ['Foote','Randall','Vanstone','Tiwari']
puts '                <div class="row">'
row.each do |s|
	sp = Speaker.new(y[s])
	puts sp.render_html
	sp.write_bio
end
puts '                </div>'

