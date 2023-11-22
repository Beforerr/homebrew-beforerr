cask "skteditor" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.3.6"

  url "https://spdf.gsfc.nasa.gov/skteditor/skteditor-#{arch}-#{version}.dmg"
  name "skteditor"
  desc "ISTP CDF Skeleton Editor"
  homepage "https://spdf.gsfc.nasa.gov/skteditor"

  app "skteditor.app"

  uninstall quit: "gsfc.spdf.edit.guis"
end