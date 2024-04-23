cask "quarto-pre" do
    version "1.5.31"
    sha256 "255918ee358d013c650c28cd257b9a061dcb4572b465c621e4ef8e32211e9468"
  
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
  
