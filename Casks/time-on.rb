cask "time-on" do
  version "1.0.0"
  sha256 "acfc06116e8a3021cbc15ef3aeeddefa5ff715eb521a7028b71319141f1113c8"

  url "https://github.com/thomasjebsen/time-on/releases/download/v#{version}/TimeOn.app.zip"
  name "Time On"
  desc "Menu bar app that tracks screen time and keeps your Mac awake"
  homepage "https://github.com/thomasjebsen/time-on"

  app "TimeOn.app"

  caveats <<~EOS
    #{token} is not signed with an Apple Developer certificate.
    macOS may show a warning on first launch. To allow it:
      System Settings → Privacy & Security → scroll down → click "Open Anyway"
  EOS

  zap trash: [
    "~/Library/Application Support/TimeOn",
    "~/Library/Preferences/com.timeon.app.plist",
  ]
end
