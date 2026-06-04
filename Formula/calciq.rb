# Homebrew formula — version + sha256 are filled in by packaging/release-cli.sh.
class Calciq < Formula
  desc "Terminal-native calculator (calciq CLI)"
  homepage "https://www.simplemind.dev/calciq"
  version "2.0.2"
  url "https://github.com/sqlaide/homebrew-calciq-releases/releases/download/v#{version}/calciq-macos-arm64.tar.gz"
  sha256 "0f314ff85ce524966398bac50ff4dbf1aa433e47aa494f977e1789ece561a1b0"

  depends_on :macos

  def install
    bin.install "calciq"
  end

  test do
    assert_match "4", shell_output("#{bin}/calciq '2 + 2'")
  end
end
