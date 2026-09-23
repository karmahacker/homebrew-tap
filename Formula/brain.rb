class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.18"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.18/brain-darwin-arm64.tar.gz"
      sha256 "387f4e54bb7433367738df8610c53bfca704ad9d5e409dd257fb0954fb262f3e"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.18/brain-darwin-x64.tar.gz"
      sha256 "116382820c841f8f96d8b906746262bf1c6a34c1ba8f217d52271062d77aaf13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.18/brain-linux-arm64.tar.gz"
      sha256 "9edac3382ffb04a9d95d179b712a6b7b86b5be1a78da3bda652b84a78531671a"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.18/brain-linux-x64.tar.gz"
      sha256 "ba12b511d701a6dc0241feb3bfc68c6a54cbefffb2c9a1ec19f4e37b47e748fc"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
