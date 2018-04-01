class AddRecipeDataToChallengesTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :challenges, :recipe_data, :text
  end
end
