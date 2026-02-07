class Heimdal < Formula
  desc "Universal dotfile and system configuration manager"
  homepage "https://github.com/limistah/heimdal"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/limistah/heimdal/releases/download/v1.1.0/heimdal-darwin-arm64.tar.gz"
      sha256 "9f4c388a61fd26962736bdaabf2503d9144db72456c0479628605036a253bcc1"
    else
      url "https://github.com/limistah/heimdal/releases/download/v1.1.0/heimdal-darwin-amd64.tar.gz"
      sha256 "44f9ef0c878c7a9afe02ebafc3267beb4c5223f1419146cf5b17b4156e84154c"
    end
  end

  def install
    bin.install "heimdal"
  end

  test do
    assert_match "heimdal 1.1.0", shell_output("#{bin}/heimdal --version")
  end
end
