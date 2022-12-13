json.extract! country_stat, :id, :name, :mobilephones, :mortalityunder5, :healthexpenditurepercapita, :healthexpenditureppercentGDP, :population, :populationurban, :birthrate, :lifeexpectancy, :GDP, :created_at, :updated_at
json.url country_stat_url(country_stat, format: :json)
