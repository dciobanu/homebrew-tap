cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.10.3"
  sha256 arm:   "9123ca81c9b42e97c6f489052f4d9bec49de7d3287befbc96e3b6e1dc24d1ffd",
         intel: "4f0e8fac61605d99cfaa8c562c94383d8ee311b10e7249e09a013589cda213f4"

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
