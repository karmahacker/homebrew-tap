class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.11"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.11/brain-darwin-arm64.tar.gz"
      sha256 "0bd2222d455911fac4f485a803fffed7ac3e61a284dc2bd77cf66be089838c1f"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.11/brain-darwin-x64.tar.gz"
      sha256 "9209d3f0d221e38da7e8e44235e47a03af7ba07b5c2257ff5e54cd586dccf987"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.11/brain-linux-arm64.tar.gz"
      sha256 "5b8a846a7c3832721d307634030568c506e3d029ddfacb35f0a0d78f20af8907"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.11/brain-linux-x64.tar.gz"
      sha256 "91727bcc7cdd78ee9427526b281ad85d4643d307898a8ae2984ff24043b8d303"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
