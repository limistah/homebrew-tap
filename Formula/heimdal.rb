class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.2.0/heimdal-darwin-arm64.tar.gz"
      sha256 "243476f396c91043f2c821bb34f6b091bf1cdd627e74ec7fcce1f11d6743431a"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.2.0/heimdal-darwin-amd64.tar.gz"
      sha256 "46011093c98cdf98884fcb5aa9a7be398a6a0a29c117d2f1fb0908314a02f250"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
