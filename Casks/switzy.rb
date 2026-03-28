cask "switzy" do
  version "1.0.0"
  sha256 "5747aed0f2a4ccf09e116120b04cc47bb575791f617cb9ac67050bf2c89bdfce"

  url "https://github.com/yefga/Switzy/releases/download/v#{version}/Switzy-v#{version}.dmg"
  name "Switzy"
  desc "Git Identity Manager"
  homepage "https://github.com/yefga/Switzy"

  app "Switzy.app"

  zap trash: [
    "~/Library/Application Support/com.yefga.Switzy",
    "~/Library/Preferences/com.yefga.Switzy.plist",
    "~/Library/Saved Application State/com.yefga.Switzy.savedState",
  ]
end
