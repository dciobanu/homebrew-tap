cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.13"
  sha256 arm:   "8283e5ece68c0c8324bcd0a04349bbbb963ba10b0ba02b64a41bfbd74ada32b5",
         intel: "69bceb16d291cae3f0ac3430cd5b8b3c8f139960ac8fd3f30daeced1722e03b1"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  depends_on macos: :monterey

  app "Marksidian.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Marksidian.app"]
  end

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
