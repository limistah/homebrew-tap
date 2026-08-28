class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limistah/heimdal/releases/download/v3.2.0/heimdal-darwin-arm64.tar.gz"
      sha256 "73335f5cab900505cca3bf7af9b481da19d8b2834f16adfaf3e4f45462cb1069"
    end
    on_intel do
      url "https://github.com/limistah/heimdal/releases/download/v3.2.0/heimdal-darwin-amd64.tar.gz"
      sha256 "1c27c85e424421bbad8fb0c4e04dd4cd5bb1914b8dc88a2fa7aa1cd9d8dac833"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal", shell_output("#{bin}/heimdal --version")
  end
end
