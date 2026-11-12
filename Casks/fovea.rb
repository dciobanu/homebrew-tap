cask "fovea" do
  version "0.2.6"
  sha256 "73353a99b95397624269f98866cbfc6340679cb64cf7b9025221da5aead1f9a1"

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
