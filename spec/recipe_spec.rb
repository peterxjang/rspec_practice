require_relative '../lib/recipe.rb'

describe Recipe do

  context "for Kale Burger" do

    before(:each) do
      @recipe = Recipe.new('1,Kale Burger,Combining the taste of cow with the nutrition of kale!,"Kale, Cow","Preheat oven to 500 degrees, put in a cow. Wait 10 minutes. Put in some kale. Take out cow and kale. Put on bun. Serve HOT!"')
    end

    it 'can generate a table of contents line' do
      expect(@recipe.toc_line()).to eq("1. Kale Burger")
    end

    it 'can display itself' do
      expect(@recipe.display()).to eq(
"""1 - Kale Burger
Combining the taste of cow with the nutrition of kale!

Ingredients:
Kale, Cow

Preparation Instructions:
Preheat oven to 500 degrees, put in a cow. Wait 10 minutes. Put in some kale. Take out cow and kale. Put on bun. Serve HOT!""")
    end

  end

  context "for Poodle Cake" do
    before(:each) do
      @recipe = Recipe.new('2,Poodle Cake (For your puppy!),Poople cakes! Perfect for pet poodle!,"Kibble, Hot dogs",Mix kibble with hot dog. Bake at 500 degrees for 25 minutes. DO NOT ADD CHOCOLATE')
    end

    it 'can be loaded from a different csv string' do
      expect(@recipe.toc_line()).to eq("2. Poodle Cake (For your puppy!)")
    end

    it 'can display itself' do
      expect(@recipe.display()).to eq(
"""2 - Poodle Cake (For your puppy!)
Poople cakes! Perfect for pet poodle!

Ingredients:
Kibble, Hot dogs

Preparation Instructions:
Mix kibble with hot dog. Bake at 500 degrees for 25 minutes. DO NOT ADD CHOCOLATE""")
    end
  end

end
