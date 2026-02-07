class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/limistah/heimdal/releases/download/v1.1.1/heimdal-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/limistah/heimdal/releases/download/v1.1.1/heimdal-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal 1.1.1", shell_output("#{bin}/heimdal --version")
  end
end
