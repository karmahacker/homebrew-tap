class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.15"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.15/brain-darwin-arm64.tar.gz"
      sha256 "d6af030e9b80c71481400977cc8664c6cb80465f0bc9d37d831ccb2e862604d3"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.15/brain-darwin-x64.tar.gz"
      sha256 "068144252651df407df2f392006bd40e7be426d8dbc994867d194ce2dd1232af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.15/brain-linux-arm64.tar.gz"
      sha256 "4c0595704b4be6281cdbbfee6eb4e3b99e9d4f461f1ae28181ff9aea1a62d8e4"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.15/brain-linux-x64.tar.gz"
      sha256 "cbedded9ce0e5bca558434e41d962e9bb5a307484fd56815b583bf10e5d976b6"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
