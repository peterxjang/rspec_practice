require 'csv'

class Recipe
  def initialize(csv_data)
    # fields = csv_data.split(",")
    fields = CSV.parse(csv_data)[0]
    @id = fields[0]
    @name = fields[1]
    @description = fields[2]
    @ingredients = fields[3]
    @instructions = fields[4]
  end

  def toc_line
    "#{@id}. #{@name}"
  end

  def display
"""#{@id} - #{@name}
#{@description}

Ingredients:
#{@ingredients}

Preparation Instructions:
#{@instructions}"""
  end
end
