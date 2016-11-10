# include this in your ~/.zshrc or ~/.bashrc
pconsole () { 
  if [[ $1 == production ]];
    then RAILS_ENV=production bundle exec pry -r ./config/environment.rb -r rails/console/app -r rails/console/helpers;
  elif [[ $1 == test ]];
    then RAILS_ENV=test pry -r ./config/environment.rb -r rails/console/app -r rails/console/helpers;
  else bundle exec pry -r ./config/environment.rb -r rails/console/app -r rails/console/helpers; 
  fi }