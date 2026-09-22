class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.2/brain-darwin-arm64.tar.gz"
      sha256 "b3df4484235e9b6314a0f95a398da4ebb8812001538b3212b8bc870db52d9599"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.2/brain-darwin-x64.tar.gz"
      sha256 "2175c06e762afe8b5789cf2be2e91d6d1157439e99bc9ab3853a41f6097ec0a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.2/brain-linux-arm64.tar.gz"
      sha256 "dc871131050780853b8b30394763f126f12f80f1a581d37ca776f30bb3d18a4f"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.2/brain-linux-x64.tar.gz"
      sha256 "b0775cbe2b87db92b078ea315d07bad5b369b7ac750571a118658ce7c6f7e690"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
