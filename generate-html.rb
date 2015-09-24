Dir.glob('**/*.md') do |item|

	if item == "README.md" then next
	end

	htmlItem = item.clone()
	htmlItem.slice! ".md"
	htmlItem = htmlItem + ".html"
	puts 'MD file:'
	puts `echo #{item}`
	puts 'HTML file:'
	puts `echo #{htmlItem}`
	puts `md2html #{item} > #{htmlItem}`
end