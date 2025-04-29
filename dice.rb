require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die


  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h1>
  <p>#{outcome}</p>"

end

get ("/dice/2/10") do
  first_die_10 = rand(1..10)
  second_die_10 = rand(1..10)
  sum_10 = first_die_10 + second_die_10

  outcome_10 = "You rolled a #{first_die_10} and a #{second_die_10} for a total of #{sum_10}!"

  "<h1>2d10</h1>
  <p>outcome_10</p>"

end

get ("/dice/1/20") do
  die_20 = rand(1..20)
  
  outcome_20 = "You rolled a #{die_20}!"

  "<h1>1d20</h1>
  <p>outcome_20</p>"

end

get ("/dice/5/4") do
  first_die_4 = rand(1..4)
  second_die_4 = rand(1..4)
  third_die_4 = rand(1..4)
  fourth_die_4 = rand(1..4)
  fifth_die_4 = rand(1..4)
  sum_4 = first_die_4 + second_die_4 + third_die_4 + fourth_die_4 + fifth_die_4

  outcome_4 = "You rolled a #{fifth_die_4}, a #{second_die_4}, a #{third_die_4}, a #{fourth_die_4} and a #{fifth_die_4} for a grand total of #{sum_4}"

end
