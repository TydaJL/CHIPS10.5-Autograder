#Currently not working very well--lags Codio

@weights = {"features/account_login.feature": 10,
            "features/add_news_items.feature": 10, 
            "features/campaign_finance.feature": 10,
            "features/display_profile.feature": 10, 
            "features/display_representative_list.feature": 10,
            "features/issues_column.feature": 10,
            "features/map_actions.feature": 10,
            "spec/models/representative_spec.rb": 10}

                  
def run_cucumber_feature(feature_file)
    #Run the feature file using cucumber command
    system("cucumber #{feature_file}")
    puts feature_file
    #Check if the cucumber command was successful (exit status 0)
    if $?.exitstatus == 0
      puts "Feature #{feature_file} was successful. +10 point"
      return 1
    else
      puts "Feature #{feature_file} failed."
      return 0
    end
end
  
# Get all feature files in the features directory
feature_files = Dir.glob('features/**/*.feature')

total_points = 0

# Iterate through each feature file and run it
feature_files.each do |feature_file|
  if run_cucumber_feature(feature_file) == 1
      total_points = total_points + 10
  end
end

puts "Total points: #{total_points}"