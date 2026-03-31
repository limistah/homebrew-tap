class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/limistah/heimdal/releases/download/v3.0.1/heimdal-darwin-arm64.tar.gz"
      sha256 "6f588944da1e6cf658875faa1d03b913fd65fea67f3bb4706e3912ae53b09a58"
    else
      url "https://github.com/limistah/heimdal/releases/download/v3.0.1/heimdal-darwin-amd64.tar.gz"
      sha256 "ade7d1c680cae90720e0c70f71382c88b449564d4a97a346ff9caa77c5811142"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal 3.0.1", shell_output("#{bin}/heimdal --version")
  end
end
