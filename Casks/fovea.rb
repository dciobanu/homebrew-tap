cask "fovea" do
  version "0.2.4"
  sha256 "54d53a6bc6063e4b91f96b3d8e66724125c58d8e7b5913670f326132da50a1e9"

  url "https://github.com/IDv4/fovea-releases/releases/download/v#{version}/Fovea-#{version}.zip"
  name "Fovea"
  desc "Focus companion that keeps one current task on screen"
  homepage "https://fovea.idv4.com/"

  auto_updates true
  depends_on macos: :sonoma

  app "Fovea.app"
  binary "#{appdir}/Fovea.app/Contents/Helpers/fovea"

  # Downloads passed signature, ticket, and Gatekeeper verification before
  # publication. Quarantine is preserved so macOS performs its normal checks.
  zap trash: [
    "~/Library/Application Support/Fovea",
    "~/Library/Caches/com.idv4.fovea",
    "~/Library/Preferences/com.idv4.fovea.plist",
    "~/Library/Saved Application State/com.idv4.fovea.savedState",
  ]
end
