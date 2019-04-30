class User

	@@all = []

	def initialize(user)
		@user = user
		@@all << self
	end

	def self.all
		@@all
	end

	def recipes
		RecipeCard.all.select {|recipe_card| recipe_card.user == self}
	end

	def add_recipe_card(recipe, date, rating)
		RecipeCard.new(date, rating, self, recipe)
	end

	def declare_allergy(ingredient)
		Allergy.new(ingredient, self)
	end

	def allergens
		Allergy.all.select {|allergy| allergy.user == self}
	end

	def recipe_ratings
		rating_array = RecipeCard.all.select {|recipe_card| recipe_card.user == self}
	end

	def top_three_recipes
		recipe_ratings.sort_by(&:rating)[-3..-1]
	end

	def most_recent_recipe
		most_recent = RecipeCard.all[-1]
		most_recent.recipe
	end
end