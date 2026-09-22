class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.14"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.14/brain-darwin-arm64.tar.gz"
      sha256 "87bb79230081afe2cf0b9e31db59d51dca1925795b1968856f3095dcf499b639"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.14/brain-darwin-x64.tar.gz"
      sha256 "e248fb4115244b347d8005e090d54160ebdd64358600e0eadd32dee37282fde2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.14/brain-linux-arm64.tar.gz"
      sha256 "99db5063e8058ff445d0ce8ffccf4ce184ac7f9227eeab12b1bca1fda8afc7bb"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.14/brain-linux-x64.tar.gz"
      sha256 "eca6367ff4411d91babd619bee7f02d1f57ed73f6e225d035f9ff8d485cb379b"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
