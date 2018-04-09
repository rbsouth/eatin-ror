desc "This task is called by the Heroku scheduler add-on"
task :delete_challenges => :production do
  puts "Deleting old Challenges..."
  Challenge.delete_all("created_at < '#{60.days.ago}'")
  puts "done."
end