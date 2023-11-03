# Forty Unbroken Blog

## Personal blog build on the Cameloen CMS

## Assets
Project uses [tailwind](https://tailwindcss.com/) for frontend.
As it's not compatible with traditional Rails asset build pipeline we got to do few tweaks to make it work.
The `tailwind.css` is compiled into the `app/assets/build` directory. From there it is compied to the `/apps/themes/forty_unbroken/assets/css` directory by the rake rask `copy_tailwind_css`.
This is done automatically via [guard](https://github.com/guard/guard) and [guard-rake](https://github.com/rubyist/guard-rake) gemd which watches for changes being made to the `tailwind.css` file. The tailwind preprocessor and the guard are launched via [foreman](https://github.com/ddollar/foreman) via `Procfile.dev` with the following command `./bin/dev`

## Deployment
