cask "deltachat" do
  version "1.34.0"
  sha256 "29e9bfd6e1254b6db37d727d488db10f1362fffd998e187b4325c7776861e4d3"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}.dmg"
  name "DeltaChat"
  desc "Chat via the e-mail server network"
  homepage "https://delta.chat/"

  livecheck do
    url "https://github.com/deltachat/deltachat-desktop"
    strategy :github_latest
  end

  app "DeltaChat.app"

  zap trash: [
    "~/Library/Application Scripts/chat.delta.desktop.electron",
    "~/Library/Application Support/CrashReporter/DeltaChat *_*.plist",
    "~/Library/Application Support/DeltaChat",
    "~/Library/Containers/chat.delta.desktop.electron",
    "~/Library/Group Containers/*.chat.delta.desktop.electron",
    "~/Library/Preferences/chat.delta.desktop.electron.plist",
    "~/Library/Saved Application State/chat.delta.desktop.electron.savedState",
  ]
end
