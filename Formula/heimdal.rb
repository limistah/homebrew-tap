class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.1.0/heimdal-darwin-arm64.tar.gz"
      sha256 "ab04c79440f62480aa753b33156b04c7268cc1d3d56e5aee227b925e44b56e65"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.1.0/heimdal-darwin-amd64.tar.gz"
      sha256 "6499a83e625db3c7312f4f9fc84d7dd8a2fd763e79079697114c55d359616501"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
