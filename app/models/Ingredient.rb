class Ingredient

	@@all = []

	def initialize(ingredient)
		@ingredient = ingredient
		@@all << self
	end

	def self.all
		@@all
	end

	def self.most_common_allergen
		allergy_array = Allergy.all.map {|allergy| allergy.ingredient}
		allergy_array.group_by(&:to_s).values.max_by(&:size).uniq
	end
end
