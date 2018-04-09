desc "This task is called by the Heroku scheduler add-on"
task :delete_challenges => :environment do
  puts "Deleting old Challenges..."
  Challenge.where("created_at < '#{24.hours.ago}'").delete_all
  puts "done."
end