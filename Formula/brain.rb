class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.6/brain-darwin-arm64.tar.gz"
      sha256 "cb137c84a1e28571035c8f28a7437022021b9badb6dd3385a7c930d015f1ca0b"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.6/brain-darwin-x64.tar.gz"
      sha256 "6e0777b802246fa890f06cc67a56b3e24be63eeb16efdbd8207c5364116f117d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.6/brain-linux-arm64.tar.gz"
      sha256 "14c93b61097c4dc94ec4bff033127b6e37ca457a03f0446d5e73e4e09095e3ec"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.6/brain-linux-x64.tar.gz"
      sha256 "db604a8128673dc4eaa531eec941003133d1668385c8e3a989a878066b3b40c2"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
