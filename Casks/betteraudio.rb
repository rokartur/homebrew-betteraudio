cask "betteraudio" do
  version "26.5.3"
  sha256 "358ecd795c9f248dbdf7997c0c4605d85e09efe4070e9f2df7d8b58b3469f85b"
  
  url "https://github.com/rokartur/BetterAudio/releases/download/#{version}/BetterAudio-#{version}.zip"
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
