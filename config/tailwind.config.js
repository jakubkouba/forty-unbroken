const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/apps/themes/forty_unbroken/views/**/*.{haml,html,erb}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
