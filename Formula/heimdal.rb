class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.0.2/heimdal-darwin-arm64.tar.gz"
      sha256 "0790c29d14441f53bef05a136f0fe1e81c966509a476fddaedf0dd3cd6f5d73f"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.0.2/heimdal-darwin-amd64.tar.gz"
      sha256 "ee54fd74fdf4f3d20a5520db1b1161546b540ff8c45dd111a71553a5b591ac62"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
