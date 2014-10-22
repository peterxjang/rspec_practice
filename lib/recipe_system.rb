class RecipeSystem
  def initialize(csv_data)
    @cookbook = CookBook.new(csv_data)
  end

  def display_toc
    puts @cookbook.table_of_contents
  end
end
