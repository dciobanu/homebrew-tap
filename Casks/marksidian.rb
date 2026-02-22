cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "b29079e475e06021fc8ee8076000cf53380de476bebba7d5e9baedb9153f8c23",
         intel: "e644212bc908c77220d2cc454d37bef0913476ef83c8db217ae51fc0fc02505d"

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
