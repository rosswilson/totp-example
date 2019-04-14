# TOTP Example

An Elixir Phoenix Framework application demonstrating TOTP two factor authentication.

![](docs/user.png)

## Features

  * Generates a random secret code, stored in the database alongside a user
  * Builds a [Google Authenticator compatible](https://github.com/google/google-authenticator/wiki/Key-Uri-Format)
    enrolment URL and displays a QR code.
  * Outputs the expected TOTP code, refreshing every 30 seconds.

## Getting Started

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn More

  * TOTP Explanation: https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm
  * QR Code URI Format: https://github.com/google/google-authenticator/wiki/Key-Uri-Format