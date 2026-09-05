cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "596373a84af9f0a0b6ca90aec38aa2315420527b1c9bb321a35f03ed4b6b072a",
         intel: "e1e09b07adc353caf5444b71096e2b0b270be690dd9c6bd0c4bd71f3a4ebf637"

  url "https://github.com/dciobanu/marksidian-releases/releases/download/v#{version}/Marksidian-#{version}-#{arch}-mac.zip"
  name "Marksidian"
  desc "Markdown editor with Obsidian-style live preview"
  homepage "https://github.com/dciobanu/marksidian-releases"

  depends_on macos: :monterey

  app "Marksidian.app"

  # Unsigned build: Gatekeeper would otherwise refuse to launch it.
  # Removed automatically once releases are Developer ID signed and notarized.
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
