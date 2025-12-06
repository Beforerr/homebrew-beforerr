cask "quarto-pre" do
  version "1.9.12"
  sha256 "e325610ed26398d6ee1beb05f4ae870c8810c7082160d20f76cd22df23cf7ea1"

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

  pkg "quarto-#{version}-macos.pkg"

  uninstall pkgutil: "org.rstudio.quarto"

  zap trash: "~/Library/Caches/quarto"
end
