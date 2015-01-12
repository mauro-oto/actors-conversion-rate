# actors-conversion-rate
Calculates the conversion rate of actors in the Oscars. Uses Wolfram Alpha's API to obtain number of nominations & wins.

## Setup
Run `bundle install`

Run `export WOLFRAM_ALPHA_API_KEY=your_wolfram_alpha_api_key` from the terminal (sign up for one [here](http://products.wolframalpha.com/api/))

Execute with arguments: `--actors "Actor 1","Actor 2"`

## Example

```
$ ruby conversion_rate_for_actors.rb --actors "Leonardo Dicaprio","Meryl Streep",
"Matthew McConnaughey","Johnny Depp","Charlie Chaplin"
Calculating conversion rate...
Leonardo Dicaprio: 0.0 (Wins: 0, Nominations: 5)
Meryl Streep: 0.1333 (Wins: 2, Nominations: 15)
Matthew Mcconnaughey: 1.0 (Wins: 1, Nominations: 1)
Johnny Depp: 0.0 (Wins: 0, Nominations: 3)
Charlie Chaplin: 0.25 (Wins: 1, Nominations: 4)
Finished!
```

Or run it without any parameters for a default list of actors: 

```
$ ruby conversion_rate_for_actors.rb 
Calculating conversion rate... 
Robert Downey Jr: 0.0 (Wins: 0, Nominations: 2)
Tom Cruise: 0.0 (Wins: 0, Nominations: 3)
Johnny Depp: 0.0 (Wins: 0, Nominations: 3)
Meryl Streep: 0.1333 (Wins: 2, Nominations: 15)
Brad Pitt: 0.2 (Wins: 1, Nominations: 5)
Jennifer Lawrence: 0.3333 (Wins: 1, Nominations: 3)
Emma Stone: 0.0 (Wins: 0, Nominations: 0)
Jamie Foxx: 0.5 (Wins: 1, Nominations: 2)
Anne Hathaway: 0.5 (Wins: 1, Nominations: 2)
Matt Damon: 0.3333 (Wins: 1, Nominations: 3)
Finished! 
```
