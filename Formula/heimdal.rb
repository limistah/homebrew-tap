class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.4.1/heimdal-darwin-arm64.tar.gz"
      sha256 "d9375d296958f5cbaeb98b4769e8c1fe9f240055fef53f860ac402c2cf86eaa1"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.4.1/heimdal-darwin-amd64.tar.gz"
      sha256 "8e9c73952da2e2e663f220d98e39ad0680ad8b39168e86f1e04c56496c143732"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
