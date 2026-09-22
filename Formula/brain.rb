class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.5/brain-darwin-arm64.tar.gz"
      sha256 "5d040307f026f1313f4e59fb4144195cdb47027b0503e64f39ab9bed0155fb1f"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.5/brain-darwin-x64.tar.gz"
      sha256 "f78dde1467d5907f8e7556b18e444ba5b59d6b92d6af2e9573e95e79308b28ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.5/brain-linux-arm64.tar.gz"
      sha256 "f7b3d7b17c4ba46fa99162bb0daa0e5e6acc7d2de9705e1940ff2fbb8f68e82d"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.5/brain-linux-x64.tar.gz"
      sha256 "a5adc9c94c3b763136cb2238baeb20d76f019280aac9b1afd27954c579a73965"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
