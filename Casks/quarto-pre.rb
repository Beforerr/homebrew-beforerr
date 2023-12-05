cask "quarto-pre" do
    version "1.4.519"
    sha256 "62b0248b9143667b77e2412573ec831fe93202fccadcb20da0cdcb6f41223e6f"
  
    url "https://github.com/quarto-dev/quarto-cli/releases/download/v#{version}/quarto-#{version}-macos.pkg",
        verified: "github.com/quarto-dev/quarto-cli/"
    name "quarto-pre"
    desc "Scientific and technical publishing system built on Pandoc"
    homepage "https://www.quarto.org/"

    livecheck do
      url "https://raw.githubusercontent.com/quarto-dev/quarto-web/main/docs/download/_prerelease.json"
      strategy :json do |json|
        json["version"]
      end
    end
  
    depends_on macos: ">= :el_capitan"
  
    pkg "quarto-#{version}-macos.pkg"
  
    uninstall pkgutil: "org.rstudio.quarto"
  
    zap trash: "~/Library/Caches/quarto"
  end
  