class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.19"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.19/brain-darwin-arm64.tar.gz"
      sha256 "49ae899caa40037b23c172cb868958a3c7605f01e2a8b7df0736e207fe194083"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.19/brain-darwin-x64.tar.gz"
      sha256 "5acac04e7b7bc3a8d5b3a7c5fbcfc8f48e65bd95cc2db83907b4c2e5b8b4e386"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.19/brain-linux-arm64.tar.gz"
      sha256 "82dd9e32a8277a4dc504851be270e8dff7ae6d7393f40fd067fc09d87a765567"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.19/brain-linux-x64.tar.gz"
      sha256 "5da63b1469530be22391830371412391433ac0996de1e2ce3d3c16ea544abef7"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
