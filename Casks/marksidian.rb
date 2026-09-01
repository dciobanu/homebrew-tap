cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.16"
  sha256 arm:   "4fbd3974f96ee6c89c92757ae187ff0d987d0c86a0a55a3de85dc3560ff34a73",
         intel: "6baff35dfe5ba32c606ee2557e20c442dad304c89ab3be154079fc907763e53c"

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
