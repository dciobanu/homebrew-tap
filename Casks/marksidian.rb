cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.13"
  sha256 arm:   "5b6654442cbfcb423411f10ac34398b9681ddb901a709aa6ddfc9ded004afcae",
         intel: "850a6a7c183a59a1bee9e9088e8b125064cba9618180f6a24466e4b4312037db"

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
