cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "a8289babd0a674ae23668c522f9b0ba469d5794168ae632bf38a28ac94653082",
         intel: "d8ddec0ea6677fd814804c55dd15fd16852beb1613bc1631cc0c7f493627d92a"

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
