class Recipe
	attr_reader :ingredient
	@@all = []

	def initialize(recipe)
		@recipe = recipe
		@ingredient = @ingredient
		@@all << self
	end

	def self.all
		@@all
	end

	def self.most_popular
		recipe_array = RecipeCard.all.map {|user| user.recipe}
		recipe_array.group_by(&:to_s).values.max_by(&:size).uniq
	end

	def recipecards
		RecipeCard.all.select{|recipe_card| recipe_card.recipe == self}
	end

	def users
		self.recipecards.map {|recipe_card| recipe_card.user}
	end

	def ingredients
		RecipeIngredient.all.select {|ingredient| ingredient.recipe == self}
	end

	def allergens
		Allergy.all.select {|allergy| allergy.ingredient == self}
	end

	def add_ingredients(ingredients)
		RecipeIngredient.new(ingredients, self)
	end





end