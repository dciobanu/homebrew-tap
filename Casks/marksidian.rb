cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "715a095bdf43f782877a04dd8d3fb46d3d012ed7eb88868459f7d0b0c0d60c13",
         intel: "56fbfee996ff29817aac30ead92a55ad63ec26de6efad3309a9a6e68313330e6"

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
