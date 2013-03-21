
desc "Sets up the new heroku application"
task :setup, :app_name do |t, args|
  name = args[:app_name]

  puts "Creating new application called #{name}:"

  puts '- Deleting existing git repo.'
  `rm -rf .git`

  puts '- Creating new git repo with initial commit.'
  `git init`
  `git add .`
  `git commit -m 'initial commit'`

  puts "- Creating heroku app called #{name}."
  `heroku create #{name}`

  puts "- Adding Heroku sendgrid:starter plugin."
  `heroku addons:add sendgrid:starter`

  puts "- Adding Heroku scheduler:standard plugin."
  `heroku addons:add scheduler:standard`

  puts "Deploying app to Heroku"
  `git push heroku master`

  puts "Running heroku run rake db:migrate"
  `heroku run rake db:migrate`

  puts "- Opening app on heroku"
  `heroku open`
  puts "Done"
end