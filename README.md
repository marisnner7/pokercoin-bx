# What
Pokecoin: trade pokémon with BTC

#### HTTP Routes:
| **VERB** | **Route**             | **Description**                         |
|----------|-----------------------|-----------------------------------------|
| [GET]    | /                     | Home 
| [GET]    | /pokemon              | List All Pokemon                        |
| [GET]    | /pokemon/:id          | Shows a Pokemon                         |
| [GET]    | /pokemon/:id/checkout | Proceed to buy a Pokemon                |
| [POST]   | /pokemon/:id/buy      | Validates and transact a valid purchase |
| [POST]   | /pokemon/:id/sell     | Validates and transact a valid sale     |
| [GET]    | /user                   | Displays user dashboard     |              |
| [GET]    | /user/transactions      | Shows all user transactions             |


### How to run
## git clone the project
## Fill the database with pokemons doing an API call: 
```rake pokemons:collect```
## Start the server
```rails s```
## Run the tests
```rspec spec```

### It was developed using rails 7 and ruby 3.1.2


### Todos: dockerize, expand the test suit and fix bugs. 

