class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/limistah/heimdal/releases/download/v1.2.0/heimdal-darwin-arm64.tar.gz"
      sha256 "fd9fcfa5035467f40dc886984d95f6bb86f7ba1fc336aa33bef34bad414b0252"
    else
      url "https://github.com/limistah/heimdal/releases/download/v1.2.0/heimdal-darwin-amd64.tar.gz"
      sha256 "6bb9bed0a7afa9ebe9bc8e7ebb6d831023143d5c7772530735f230736436c393"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal 1.2.0", shell_output("#{bin}/heimdal --version")
  end
end
