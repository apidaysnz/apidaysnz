require 'yaml'
require 'erb'


class Speaker
	attr_accessor :name, :title, :affiliation, :bio_link, :picture

	def initialize(map)
		speaker_template = File.read('speaker.erb')
		@renderer = ERB.new(speaker_template)
	
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
	
end

f = File.read('speakers.yml')
y = YAML.load(f)

row = ['Foote','Randall','Vanstone']

puts '                <div class="row">'
row.each do |s|
	sp = Speaker.new(y[s])
	puts sp.render_html
end
puts '                </div>'

