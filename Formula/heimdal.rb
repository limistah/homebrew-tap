class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/limistah/heimdal/releases/download/v1.1.2/heimdal-darwin-arm64.tar.gz"
      sha256 "b451cd897c64fcf0c06fcf2de8acf80f0c7d255de6b95a6ae111a166ab64f1f0"
    else
      url "https://github.com/limistah/heimdal/releases/download/v1.1.2/heimdal-darwin-amd64.tar.gz"
      sha256 "17910743f4a43808cc7951ba0d3fe25fd33ff78ba3014ad572d89879050ead60"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal 1.1.2", shell_output("#{bin}/heimdal --version")
  end
end
