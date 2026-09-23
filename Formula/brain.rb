class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.17"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.17/brain-darwin-arm64.tar.gz"
      sha256 "07128c017d75b5de700dda5263292692bb7491d1005be0a3f3a74a7ef357798f"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.17/brain-darwin-x64.tar.gz"
      sha256 "7face211daaae91240615bff02941f8035fe0095568cb078a39fced277415fa3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.17/brain-linux-arm64.tar.gz"
      sha256 "cf0bfcd048c6ae409189d861338bd47fed3d15ed4a87649ca923919d883c650c"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.17/brain-linux-x64.tar.gz"
      sha256 "d7c0171d6572a12fd9050864379cd0955467687dd87820b6ca4a9e9cb29e61c3"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
