# Homebrew formula — version + sha256 are filled in by packaging/release-cli.sh.
class Calciq < Formula
  desc "Terminal-native calculator (calciq CLI)"
  homepage "https://www.simplemind.dev/calciq"
  version "2.0.1"
  url "https://github.com/sqlaide/homebrew-calciq-releases/releases/download/v#{version}/calciq-macos-arm64.tar.gz"
  sha256 "f2197d6b90f09022e0558d37ce59b16e771601b2372c54476611048df4348202"

  depends_on :macos

  def install
    bin.install "calciq"
  end

  test do
    assert_match "4", shell_output("#{bin}/calciq '2 + 2'")
  end
end
