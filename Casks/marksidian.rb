cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "22aaf73bc2cef1a108cdafa224fdc8061bb8913632ec375f779ba0306a271d26",
         intel: "13b8390af1ec32417b38859e73e44d61ff254c98f35a3e099b07e1d8313c5da4"

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
