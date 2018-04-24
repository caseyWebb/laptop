module.exports = {
  config: {
    fontSize: 12,
    fontFamily: 'Fira Mono for Powerline',

    cursorColor: 'rgba(248,28,229,0.8)',
    cursorShape: 'UNDERLINE',

    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',

    css: `
      .tabs_list .tab_tab {
        background-color: rgba(0,0,0,0) !important;
      }
    `,

    padding: '12px 14px',

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    shell: '/bin/zsh',
    shellArgs: ['--login'],

    bell: 'SOUND',

    copyOnSelect: true,

    hypernasa: {
      overlayOpacity: .8
    }
  },

  plugins: [
    'hyperterm-tab-icons',
    // 'hypernasa',
    'hyperterm-monokai'
  ],

  localPlugins: [
    'hypernasa'
  ]
}
