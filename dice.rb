require "sinatra"
require "sinatra/reloader"

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

  outcome_10 = "You rolled a #{first_die_10} and a #{second_die_10} for a total of #{sum_10}"

  "<h1>2d10</h1>
  <p>outcome</p>"
