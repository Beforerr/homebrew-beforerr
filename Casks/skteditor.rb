cask "skteditor" do
    version "1.3.6"
    arch = Hardware::CPU.arch.to_s

    if arch == "arm64" then arch = "aarch64" end
    url "https://spdf.gsfc.nasa.gov/skteditor/skteditor-#{arch}-#{version}.dmg"
  
    name "skteditor"
    desc "ISTP CDF Skeleton Editor"
    homepage "https://spdf.gsfc.nasa.gov/skteditor"
  
    app "skteditor.app"
  
    uninstall quit: "gsfc.spdf.edit.guis"
  end
