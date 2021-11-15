# ProviderLookup

Provider Lookup is a web application allowing users to search for individual medical providers in the United States registered under the National Plan and Provider Enumeration System (NPPES). This application is adapted from the NPPES National Provider Identifier (NPI) Registry Website (https://npiregistry.cms.hhs.gov/).

This application is implemented using Elixir and HTML with the Phoenix framework, and it also uses PostgreSQL for the database.

The data sources for this application come from the NPPES official website and the National Uniform Claim Committee: 

https://download.cms.gov/nppes/NPI_Files.html

https://www.nucc.org/index.php/code-sets-mainmenu-41/provider-taxonomy-mainmenu-40/csv-mainmenu-57

*Note: This build is optimized for development purposes only.*

## Requirements

It's an [Elixir](http://elixir-lang.org) application built with the [Phoenix](http://www.phoenixframework.org) web framework, [PostgreSQL](https://www.postgresql.org), and etc.  About 10GB of free space is also required.

## Installation

[Phoenix Installation](https://hexdocs.pm/phoenix/installation.html)

### Installing Dependencies
```commandline
mix deps.get
```

### Pulling Data
```commandline
mix help provider_lookup.pull
```
```commandline
mix provider_lookup.pull
```
This will pull the latest dataset from the NPPES website into the `data` directory and store the latest filename in 
`curr.txt`.


### Phoenix Setup && Inserting Data into PostgreSQL
```commandline
mix ecto.setup
```

Note: This may take a long time to run as the data file to process is more than 8 GB in size.

## Running

To start you Phoenix server:
   * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit ['localhost:4000`](http://localhost:4000) from your browser.


## Screenshots 

<p align="center">
<img width="650" src="https://github.com/qrede/provider_lookup/blob/master/screenshots/1.png">
</p>

<p align="center">
<img width="650" src="https://github.com/qrede/provider_lookup/blob/master/screenshots/2.png">
</p>

<p align="center">
<img width="650" src="https://github.com/qrede/provider_lookup/blob/master/screenshots/3.png">
</p>
