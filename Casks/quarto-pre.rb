cask "quarto-pre" do
  version "1.7.14"
  sha256 "b003c7feaf74950d7ca5b91c868a6104b2348d035c256c80fd85777e0b792fb0"

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
