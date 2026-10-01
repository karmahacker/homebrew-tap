class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.20"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.20/brain-darwin-arm64.tar.gz"
      sha256 "fd5b65c02a40a06d1612a568ed83edd1915485a9f2730026337f5a68d9ade5ec"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.20/brain-darwin-x64.tar.gz"
      sha256 "57049c8093d0ce70976e3b038d190997306e15439428dbd291174f7414e9ab60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.20/brain-linux-arm64.tar.gz"
      sha256 "7527506ba48d7d125bd17777e39f5fad5e8ca1e89e790a068076ab83a0e3eacd"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.20/brain-linux-x64.tar.gz"
      sha256 "ff537d6090a9ddb8adead030b37caffaf2ab7aa38ed95514da1329d358ab3415"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
