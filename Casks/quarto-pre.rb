cask "quarto-pre" do
    version "1.6.29"
    sha256 "6f67ae586cfe1ef09e0a736cd608eadac20c0c277d97636c8d965b561723c6bf"
  
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
