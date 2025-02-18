cask "bookwright" do
  version "2.5.2"
  sha256 "ab8635b9b76894931dfed3317ab67c017651f9c3a881fa0d450dd67facfd03aa"

  url "https://software.blurb.com/bookwright_v#{version.major}/#{version}/BookWright.dmg"
  name "bookwright"
  desc "Make a book with this tool and the Blurb printing service"
  homepage "https://www.blurb.com/bookwright"

  # If this URL only provides information for a specific major version, this
  # check will be unable to detect new major versions and these will need to
  # be identified manually outside of livecheck. In that scenario, the check
  # should theoretically work as expected again after updating the cask version.
  livecheck do
    url "https://www.blurb.com/bookwright_v#{version.major}/versions.json"
    regex(/["']version["']:\s*?["']v?(\d+(?:\.\d+)+)["']/i)
  end

  app "BookWright.app"

  zap trash: [
    "~/Library/Application Support/com.blurb.bookwright",
    "~/Library/Caches/com.blurb.bookwright",
    "~/Library/HTTPStorages/com.blurb.bookwright",
    "~/Library/Preferences/com.blurb.bookwright.plist",
    "~/Library/Saved Application State/com.blurb.bookwright.savedState",
  ]
end
