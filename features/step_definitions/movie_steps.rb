Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /the director of "(.*?)" should be "(.*?)"/ do |movie, director|
  Movie.find_by_title(movie).director == director
end

When /^I have an invalid api_key$/ do
	Movie.api_key != '6989a4b85cf55f9bfad65230279dcb0a'
end
