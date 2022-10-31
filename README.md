# What
Pokecoin: trade pokémon as NFTs


## Project Specifications
#### HTTP Routes:
| **VERB** | **Route**             | **Description**                         |
|----------|-----------------------|-----------------------------------------|
| [GET]    | /                     | Home 
| [GET]    | /pokemon              | List All Pokemon                        |
| [GET]    | /pokemon/:id          | Shows a Pokemon                         |
| [GET]    | /pokemon/:id/checkout | Proceed to buy a Pokemon                |
| [POST]   | /pokemon/:id/buy      | Validates and transact a valid purchase |
| [POST]   | /pokemon/:id/sell     | Validates and transact a valid sale     |
| [GET]    | /user                   | Displays the logged in user account     |
| [GET]    | /user/add               | Shows a screen to add money to wallet   |
| [PATCH]  | /user/add               | Adds money to the wallet                |
| [GET]    | /user/transactions      | Shows all user transactions             |


###How to run
#git clone the project
```rake pokemons:collect```
##Fill the database with pokemons doing an API call: 
```rake pokemons:collect```
## Start the server
```rails s```
##Run the tests
```rspec spec```

###It was developed using rails 7 and ruby 3.1.2




