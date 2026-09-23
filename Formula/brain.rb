class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.16"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.16/brain-darwin-arm64.tar.gz"
      sha256 "8bb99334e50cda45291a8a26317ece5e6fd06ad78534ca206a6f067ab61a5b23"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.16/brain-darwin-x64.tar.gz"
      sha256 "11648863c84b28c4b62d4f6d1572fc1a7b1655484727043f7caef4ece85a115a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.16/brain-linux-arm64.tar.gz"
      sha256 "b7cf6844c41802e479578e9dbd08a510763263b200b8bcc3651ce615867cf387"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.16/brain-linux-x64.tar.gz"
      sha256 "78488ffc2da9080612f0aaedb6b924a9ae39f5a4694a64be9f88e4db0bdabb7b"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
