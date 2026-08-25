cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "a2cb00a65461ced6be05da69dc1abd0baae5410eaeda29dfa45b03b44f69e0aa",
         intel: "7014e3fb41e16e364164f486acca3c84b53996ce006123757b4b6f7abd25a108"

  url "https://github.com/dciobanu/marksidian/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian"

  depends_on macos: ">= :monterey"

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
