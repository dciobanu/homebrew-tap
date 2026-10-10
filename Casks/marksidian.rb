cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.5.20"
  sha256 arm:   "56d4feb8c553ac405bf83f583947b9c4d9e81235828a4196930774eb974758e6",
         intel: "0cbe2b7bf18efd4eaae30160a08fa8bb500272568eca43343a39bab7d92ea7da"

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
