class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.0.1/heimdal-darwin-arm64.tar.gz"
      sha256 "f536a08f3b1f8bfc4782b11ead6f49998e4e3e5c3f34a0e15d5b2e626f67ddc2"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.0.1/heimdal-darwin-amd64.tar.gz"
      sha256 "d5ee21ed3862a2b3287f8feb6a04931746df590ad507ab5716ba8e922cb4e4f8"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
