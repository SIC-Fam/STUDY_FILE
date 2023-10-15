/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    screens: {
      xl: "1400px",
    },
    extend: {
      colors: {
        primary: "#007f49",
        secondary: "#c7c8c9",
      },
    },
  },
  plugins: [],
};
