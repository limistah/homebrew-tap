class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.1.0/heimdal-darwin-arm64.tar.gz"
      sha256 "54a3a835143f32459e39eb4a2ba4ed58204d3e0f042814fd10a563be931fdeb3"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.1.0/heimdal-darwin-amd64.tar.gz"
      sha256 "efd6d35d40fa73f15b443e370d86741b6e7b34053579a216b7e1e940e3bc56d4"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
