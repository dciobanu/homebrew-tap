cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.19"
  sha256 arm:   "ba2717b725aba1582dcb8ef24fdd6a62cc570bc97adba92ccd7fdf0e9a94fd32",
         intel: "3f2cf33bd60502570ed030e0c79e94843572d9a86ae447a1627c448ce353505d"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  depends_on macos: :monterey

  app "Marksidian.app"

  zap trash: [
    "~/Library/Application Support/Marksidian",
    "~/Library/Preferences/com.marksidian.editor.plist",
    "~/Library/Saved Application State/com.marksidian.editor.savedState",
  ]
end
