# LNDR
## A book lending library built with Ruby on Rails 8.

## Setup

1. **Clone the repository**: Clone the repository to your local machine:
    ```sh
    git clone https://github.com/yourusername/lndr.git
    cd lndr
    ```

2. **Ruby version**: Ensure you have Ruby installed. This project uses Ruby version `x.x.x`. You can install it using [RVM](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv).

3. **Install dependencies**: Install the required gems:
    ```sh
    bundle install
    yarn install
    ```

4. **Database creation**: Create the database:
    ```sh
    rails db:create
    ```

5. **Database initialization**: Run the database migrations:
    ```sh
    rails db:migrate
    ```

6. **Database setup**: Populate the database with random books:
    ```sh
    rails db:seed
    ```

## Running the Application

To start the application, run:
```sh
rails server
```
Then, open your browser and navigate to `http://localhost:3000`.

## Running the Tests

To run the test suite, use:
```sh
rails test
```

## Additional Information

* **Deployment instructions**: Follow your deployment platform's instructions to deploy the application.
