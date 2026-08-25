cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "b105c98196deeea246b5845010fbc7d512d5852c197a097b5a02e9652aeb4ea6",
         intel: "4a85b6b74f285fbdf9641b698bdbc5edb9c8b36541173be25fe5252651bc32f5"

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
