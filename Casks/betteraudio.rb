cask "betteraudio" do
  version "26.6.1"
  sha256 "988b18f289132f3a9fa15b54cc9a6a8d91c5523e4dd0785b3e2649ab37d0802b"
  
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
