# Pin npm packages by running ./bin/importmap

pin 'application'
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js'
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin "stimulus-chartjs" # @5.0.1
pin "@kurkle/color", to: "@kurkle--color.js" # @0.3.2
pin "chart.js/auto", to: "chart.js--auto.js" # @4.4.2
pin "chartkick" # @5.0.1
