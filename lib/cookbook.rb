class CookBook
  def initialize(csv_data)
    @recipes = csv_data.split("\n")[1..-1].map { |line| Recipe.new(line) }
  end

  def table_of_contents
    @recipes.map { |recipe| recipe.toc_line }.join("\n")
  end
end
