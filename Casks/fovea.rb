cask "fovea" do
  version "0.2.17"
  sha256 "041f543ad4a41d5b8e4bb140821f583726b0c0c6d0ccbe89cd2eb223acd986ce"

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
