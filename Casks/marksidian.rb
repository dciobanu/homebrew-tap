cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "be5ab7808f1595273f13294eabec661852bbcf3b5979285600ad25c04f57394e",
         intel: "4aac70ae9c418486d5efdd22c09ab52820f2262dbca06547ec8d91531c209535"

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
