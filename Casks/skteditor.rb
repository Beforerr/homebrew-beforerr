cask "skteditor" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.3.6"
  sha256 "72108f0174d1415321b2142d276e4bcffa01d90cc273201addef8ff5b08bddc0"

  url "https://spdf.gsfc.nasa.gov/skteditor/skteditor-#{arch}-#{version}.dmg"
  name "skteditor"
  desc "ISTP CDF Skeleton Editor"
  homepage "https://spdf.gsfc.nasa.gov/skteditor"

  app "skteditor.app"

  uninstall quit: "gsfc.spdf.edit.guis"
end