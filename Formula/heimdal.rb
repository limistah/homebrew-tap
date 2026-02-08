class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/limistah/heimdal/releases/download/v2.0.0/heimdal-darwin-arm64.tar.gz"
      sha256 "edbd54fb8671ff1a09db957899825137f058aebce9ccbec00634dec9085ccf5b"
    else
      url "https://github.com/limistah/heimdal/releases/download/v2.0.0/heimdal-darwin-amd64.tar.gz"
      sha256 "7715b10723fbc003bbf1e5154e8831bf48a20107522e3b4602431d8d1faf24a0"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal 2.0.0", shell_output("#{bin}/heimdal --version")
  end
end
