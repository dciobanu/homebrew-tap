cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.10.4"
  sha256 arm:   "e5cb56611d3cae420b0b71b81b236869156556953c991b2b9f5dd2753c71324c",
         intel: "0f3f9f054e7a773127c8bcca8567cc3fe58bdb91ffe6421b2bf2ca5306caa4d9"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  auto_updates true
  depends_on macos: :ventura

  app "Marksidian.app"

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
