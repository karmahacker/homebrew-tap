class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.9/brain-darwin-arm64.tar.gz"
      sha256 "ad6bf232bfca4b8b2f64e8637cc2e8c6f2ca0a1a4688be2610920f774b17faa9"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.9/brain-darwin-x64.tar.gz"
      sha256 "d316a0693448608cdf7190c754a85478b889109457c36b794c27f0a4419d68e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.9/brain-linux-arm64.tar.gz"
      sha256 "913cda48eae552eafd1eb2a2a7ffb6912f3e87381343808c9a93fbfb6210f9af"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.9/brain-linux-x64.tar.gz"
      sha256 "312aa2ae9f01d156d2a28f8b3aa015ae55f3c0069d5e4f747017a46f069dc351"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
