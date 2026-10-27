cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "851cd25a3355b68ff4e955966d2480b2625cb2f90bb3c0072b551829cf34c005",
         intel: "5f9a055dcd62b5599cb827c8950467a1413a100a59f5c084c19b88c294b28f8d"

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
