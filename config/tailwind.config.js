const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      'primary': { 
        100: '#3778c224',
        500: '#3778c2',
        700: '#2d5d94',
      },
      'black': '#000000',
      'white': '#ffffff',
      'secondary': '#5fb523',
      't-main': '#434b54',
      'divider': '#d9d9d9',
      'gray': '#f4f4f4',
      'gray-b': '#b9b9b9',
      'red': {
        300: 'rgb(252 165 165)',
        100: 'rgb(254 226 226)',
      },
      'green': {
        100: 'rgb(220 252 231)',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
