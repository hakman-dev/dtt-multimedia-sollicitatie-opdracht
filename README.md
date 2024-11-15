⚠️ Important Notice: This is a technical assessment from DTT Multimedia that is commonly sent to job applicants. Be aware that despite the significant time investment required (approximately 20 hours), the company often does not provide feedback or follow-up communication after submission.

## Initial Setup
To start the application for the first time:
1. Copy `.env.example` to `.env`.
2. Fill in `APP_KEY` with a key (Test key: `base64:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=`).
3. Run `docker-compose up` in the root directory.
4. Run `php artisan db:seed` inside the container.
5. The website will be accessible at `http://localhost:8000`.

## Regular Startup
To start the application normally:
- Run `docker-compose up`.
- The website will be accessible at `http://localhost:8000`.

## Using the API Routes with Postman
Import the Postman collection from the root directory: `/postman-collection.json`.
Public routes can be accessed without authentication:
- List all facilities
- Get a single facility
- Search for facilities

## Using Secured API Routes with Postman
1. Register via an API call (refer to the Postman collection under 'Auth/Register').
2. Retrieve the `access_token` from the response and save it in Postman's DTT variables.
3. You can now use the create, update, and delete routes.

## Additional Resources
Apart from the seeders, a database dump (`db-dump.sql`) is available in the root directory.

## Running Tests
Tests can be executed in the container without modifications using `php artisan test`.

