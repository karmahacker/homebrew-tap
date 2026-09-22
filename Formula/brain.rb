class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.12"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.12/brain-darwin-arm64.tar.gz"
      sha256 "7a6aac6aa9a424dfc9ea2053f645bbf0cf798106f06dfdd5dcd5bd97be1983e4"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.12/brain-darwin-x64.tar.gz"
      sha256 "16195be5cdc30da4a32b38233de2acb5008feade92c9973fbd5f727a750cb704"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.12/brain-linux-arm64.tar.gz"
      sha256 "94872138b455dbde85e7e88b2a446a936af53136fd31546f3e58f48c2c77f792"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.12/brain-linux-x64.tar.gz"
      sha256 "cab7606cf0974c6b60c153aa45787611d308a0d45355b2ee0fd12f23f525b72b"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
