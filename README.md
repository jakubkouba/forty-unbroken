# Forty Unbroken Blog

## Personal blog build on the Cameloen CMS

## Run the app
- `$ bundle`
- Create `.env.development.local` file and enter env valiables `DB_USER` and `DB_PASSWORD`
- `$ docker-compose --env-file .env.development.local up -d db`
- `$ bundle exec rake db:create`
- `$ bundle excec rake db:migrate`
- `$ ./bin/dev` # create a tailwind.css from and compy that over tho the theme
- `$ bundle exec rails s`
- Go to browser and run `http://localhost:3000`
- Enter name of the site
- Keep the login details provided default are: user: admin, password: admin123


## Assets
Project uses [tailwind](https://tailwindcss.com/) for frontend.
As it's not compatible with traditional Rails asset build pipeline we got to do few tweaks to make it work.
The `tailwind.css` is compiled into the `app/assets/build` directory. From there it is compied to the `/apps/themes/forty_unbroken/assets/css` directory by the rake rask `copy_tailwind_css`.
This is done automatically via [guard](https://github.com/guard/guard) and [guard-rake](https://github.com/rubyist/guard-rake) gemd which watches for changes being made to the `tailwind.css` file. The tailwind preprocessor and the guard are launched via [foreman](https://github.com/ddollar/foreman) via `Procfile.dev` with the following command `./bin/dev`

## Deployment
Deployment is performed via the Capistrano deploy tool.
It uses:
- capistrano-rails
- capistrano-rvm
- capistrano3-puma

The application runs as a service under the Unix SystemD
The capistrano3-puma generates templates for the SystemD and Nginx based on the capistrano config in `deploy.rb` and `config/deploy/{environment}.rb`
Then it uploads to the server
It's neccessary to create the configuration for the environment variables like 

### File location and configuration
- Service configuration: `/etc/systemd/system/puma_forty-unbroken_staging.service`
- Environment configuration: `/etc/systemd/system/puma_forty-unbroken_staging.service.d/credentials.conf`
- Server configuration: `/etc/nginx/sites-available/forty-unbroken_staging`

System D is using the `systemctl` command for managing services.

Name of service is used to fetch the configuration that lives in the `/etc/systemd/system` directory on Ubuntu systems. `systemctl start my-service` will look for a file named `/etc/systemd/system/my-service.service`

### Start and stop the service
System D uses the `systemctl` command for managing services

- `$ sudo systemctl start puma_forty-unbroken_staging` # Start the service. The config of the service is found based on the name of the service
- `$ sudo systemctl stop puma_forty-unbroken_staging` # Stop the service
