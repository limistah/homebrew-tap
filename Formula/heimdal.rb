class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.3.0/heimdal-darwin-arm64.tar.gz"
      sha256 "47d3e7e4a80db94d4f7151866f3fac6168f9f05d4981a4aef466dab1cfc62054"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.3.0/heimdal-darwin-amd64.tar.gz"
      sha256 "daa2df7bdb30a0b5161570d2d617da9d4803dd574d4ce36bf582a354b37b7487"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
