cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "4b7b1ccf1e6525a6dc91bb2aa61b8d01db90b5471efb912565b00333207f9ee4",
         intel: "801958e92803c7232d22bf0c28622dd01c0a0e2912350ac258b18efcc5a20aea"

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
