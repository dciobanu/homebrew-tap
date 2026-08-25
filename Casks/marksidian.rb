cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.10"
  sha256 arm:   "1d6e987d7f6ac2a629edd720677b6478880a663814787ab31e00b15a3e088252",
         intel: "d6431667ac3239dc5ad0b2762079518ae88ab2b0a747cb747474778a9d31a300"

  url "https://github.com/dciobanu/marksidian/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian"

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
