cask "betteraudio" do
  version "26.6"
  sha256 "dc5bcf56ae79a30a43b409ec782badfbf037859e89f5c881314c1e2d178688a5"
  
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
