class CreateCountryStats < ActiveRecord::Migration[5.0]
  def change
    create_table :country_stats do |t|
      t.string :name
      t.integer :mobilephones, :limit=>53
      t.integer :mortalityunder5, :limit=>53
      t.integer :healthexpenditurepercapita, :limit=>53
      t.integer :healthexpenditureppercentGDP, :limit=>53
      t.integer :population, :limit=>53
      t.integer :populationurban, :limit=>53
      t.integer :birthrate, :limit=>53
      t.integer :lifeexpectancy, :limit=>53
      t.integer :GDP, :limit=>53

      t.timestamps
    end
  end
end
