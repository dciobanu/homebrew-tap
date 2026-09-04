cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.17"
  sha256 arm:   "37b2ba6ff811bed7ab2e882b6aa73de11b4afa378d11381ee27b875cc0e28312",
         intel: "ebfbd89223844c68299dad156c48b06d01a9ace46ee984d83bfa75324a1d43ff"

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
