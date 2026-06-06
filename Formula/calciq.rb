# Homebrew formula — version + sha256 are filled in by packaging/release-cli.sh.
class Calciq < Formula
  desc "Terminal-native calculator (calciq CLI)"
  homepage "https://www.simplemind.dev/calciq"
  version "2.0.5"
  url "https://github.com/sqlaide/homebrew-calciq-releases/releases/download/v#{version}/calciq-macos-arm64.tar.gz"
  sha256 "c2f967c4e8f84813ed8912f194476c8661a296701224224712920fc28058bc0d"

  depends_on :macos

  def install
    bin.install "calciq"
  end

  test do
    assert_match "4", shell_output("#{bin}/calciq '2 + 2'")
  end
end
