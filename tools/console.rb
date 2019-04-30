require_relative '../config/environment.rb'
require_relative '../app/models/Allergy.rb'
require_relative '../app/models/Ingredient.rb'
require_relative '../app/models/Recipe.rb'
require_relative '../app/models/User.rb'
require_relative '../app/models/RecipeCard.rb'
require_relative '../app/models/RecipeIngredient.rb'

mikey = User.new("Mikey")
andrew = User.new("Andrew")

pasta = Recipe.new("Pasta")
soup = Recipe.new("Soup")

card_1 = RecipeCard.new("Jan 1", 7, mikey, pasta)
card_2 = RecipeCard.new("Jan 2", 8, mikey, soup)
card_3 = RecipeCard.new("Jan 3", 9, andrew, pasta)
card_4 = RecipeCard.new("Jan 4", 10, mikey, pasta)
card_5 = RecipeCard.new("Jan 5", 7, andrew, soup)
card_6 = RecipeCard.new("Jan 5", 2, mikey, soup)

allergy_a = Allergy.new(soup, mikey)
allergy_b = Allergy.new(pasta, andrew)
allergy_c = Allergy.new(pasta, mikey)

water = RecipeIngredient.new("Water", pasta)

binding.pry
false
