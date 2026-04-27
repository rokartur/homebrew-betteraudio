cask "betteraudio" do
  version "26.5.6"
  sha256 "f0793117de3461113337da151300b489acfe25e151767ea856b213690ea5fa41"
  
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
