class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.13"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.13/brain-darwin-arm64.tar.gz"
      sha256 "be4021c49b3652842c4e8926695870f98ebc1d7cfb49dd74da31eb5b4b0ec253"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.13/brain-darwin-x64.tar.gz"
      sha256 "9250a8a179ce36ce47524711719ced0f4448a167fd029e5a904d8a33961dac6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.13/brain-linux-arm64.tar.gz"
      sha256 "fed6c407ba7db6373b17ec43d7d165f3cba31767960646d343f62200716c9935"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.13/brain-linux-x64.tar.gz"
      sha256 "e9a7df9b0face4c26974070c39298184ead07951d1e8cc9264f2f915eddd0081"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
