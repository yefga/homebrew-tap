cask "switzy" do
  version "0.1.0"
  sha256 "963f19e2e8a384cf75c9efa2458350b379632c13edfade6e02c884b931fa717e"

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
