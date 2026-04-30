cask "betteraudio" do
  version "26.6"
  sha256 "5b89c1e435b4e0ca6581a7f6fd479ede6604bddaaf77ea574e8a7958898047cd"
  
  url "https://github.com/rokartur/BetterAudio/releases/download/#{version}/BetterAudio-#{version}.dmg"
  name "BetterAudio"
  desc "Master your Mac's audio with per-app volume control and precise device management"
  homepage "https://github.com/rokartur/BetterAudio"
  
  livecheck do
    url :url
    strategy :github_latest
  end
  
  app "BetterAudio.app"
  
  zap trash: [
    "~/Library/Caches/pro.betteraudio.BetterAudio",
    "~/Library/Caches/BetterAudio",
    "~/Library/HTTPStorages/pro.betteraudio.BetterAudio",
    "~/Library/HTTPStorages/BetterAudio",
    "~/Library/Preferences/pro.betteraudio.BetterAudio.plist",
    "~/Library/Preferences/BetterAudio.plist",
    "~/Library/Application Support/BetterAudio"
  ]
end
