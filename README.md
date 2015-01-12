# actors-conversion-rate
Calculates the conversion rate of actors in the Oscars. Uses Wolfram Alpha's API to obtain number of nominations & wins.

## Setup
Run `bundle install`

Run `export WOLFRAM_ALPHA_API_KEY=your_wolfram_alpha_api_key` (sign up for one [here](http://products.wolframalpha.com/api/))

Execute with arguments: `--actors "Actor 1","Actor 2"`

## Example

```
$ ruby conversion_rate_for_actors.rb --actors "Leonardo Dicaprio","Meryl Streep","Matthew McConnaughey","Johnny Depp","Charlie Chaplin"
Calculating conversion rate...
Leonardo Dicaprio: 0.0 (Wins: 0, Nominations: 5)
Meryl Streep: 0.1333 (Wins: 2, Nominations: 15)
Matthew Mcconnaughey: 1.0 (Wins: 1, Nominations: 1)
Johnny Depp: 0.0 (Wins: 0, Nominations: 3)
Charlie Chaplin: 0.25 (Wins: 1, Nominations: 4)
Finished!
```
