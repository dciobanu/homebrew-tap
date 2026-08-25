cask "marksidian" do
  arch arm: "arm64", intel: "x64"

  version "0.3.9"
  sha256 arm:   "d224f8898d12bc8ebadff6fe2176436cb9a9ba5dfc78cbead218902db733d4b0",
         intel: "2fb44561c448c9e3e6947aa8620bfa5e12982af2cab980690b622ec77a62069b"

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
