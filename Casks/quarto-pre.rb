cask "quarto-pre" do
    version "1.5.33"
    sha256 "8500a7385d91eaa475b90d18ea903ba7859c4c7e5dc637f55ac29807ecd84bce"
  
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
  
