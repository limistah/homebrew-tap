class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.4.0/heimdal-darwin-arm64.tar.gz"
      sha256 "5bf02a92de6571ae3c9e7ff1acd0dddd5b25d4f57fbfa93a8c60036400f6ff44"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.4.0/heimdal-darwin-amd64.tar.gz"
      sha256 "d830702257977683d581e4eaa4b1d373dda17414b5c5e6d24b164e73e511039c"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
