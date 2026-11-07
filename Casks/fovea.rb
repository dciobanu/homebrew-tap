cask "fovea" do
  version "0.1.2"
  sha256 "924721d8575d55ee7447b4af297f03baccdeeb31dd7838b56381eaf1799fb591"

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
