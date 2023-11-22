cask "autoplot" do
    version "2023.11"
    sha256 "b60e7d20527f594bed6f88d665ece5ca04a62894f6a76022a1c8bb36f045a493"
  
    url "https://cottagesystems.com/~jbf/autoplot/build/autoplot_macos_#{version.major}_#{version.minor}.dmg"
    name "Autoplot"
    desc "Interactive browser for data on the web"
    homepage "http://autoplot.org"
  
    app "autoplot.app"
end