cask "time-on" do
  version "1.0.0"
  sha256 "5a93535da463fff54e1a6efa2a4d57c3d1eac8a199515003cdf00a01472dc415"

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
