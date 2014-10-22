require_relative '../lib/cookbook'

describe CookBook do
  it 'can print out the table of contents from its recipes' do
    csv_data = <<-csv
id,name,description,ingredients,directions
1,Kale Burger,Combining the taste of cow with the nutrition of kale!,"Kale, Cow","Preheat oven to 500 degrees, put in a cow. Wait 10 minutes. Put in some kale. Take out cow and kale. Put on bun. Serve HOT!"
2,Poodle Cake (For your puppy!),Poople cakes! Perfect for pet poodle!,"Kibble, Hot dogs",Mix kibble with hot dog. Bake at 500 degrees for 25 minutes. DO NOT ADD CHOCOLATE
3,Peanut Butter Coffee Brownie,Just looking has caused people to gain 10 pounds!,"Chocolate, Peanut Butter, Espresso, Cream Cheese","Chew the espresso beans to a pulp, spit them into the bowl. Now mix in the chocolate, cream cheese, and peanut butter. Bake at 450 for 45 minutes"
csv
    toc = <<-data
1. Kale Burger
2. Poodle Cake (For your puppy!)
3. Peanut Butter Coffee Brownie
data
    toc.strip!
    cookbook = CookBook.new(csv_data)
    expect(cookbook.table_of_contents).to eq(toc)
  end
end
