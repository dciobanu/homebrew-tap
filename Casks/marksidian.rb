cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.8"
  sha256 arm:   "ea7e1c1f61d768575c77f65b25b8e23ae196761f0726ddf9f3208d45e89d4e39",
         intel: "ef9d677ed3f892ae2d90371dec6a664a0308f244e6786a68fecd83dd65d22653"

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
