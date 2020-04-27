echo “Welcome to Binging with Blackjack?”
echo “Required files will be downloaded from Github”
git clone git@github.com:dannyfern/Terminal_Application-.git
cd begin/src
echo “Required gems will now be installed”
bundle install
echo “Launching the application...”
ruby begin.rb