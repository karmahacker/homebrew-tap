class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.7/brain-darwin-arm64.tar.gz"
      sha256 "b0aeb9db31eddeee6276ebac26adaaec913fd55437c6e62d96970458c398d683"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.7/brain-darwin-x64.tar.gz"
      sha256 "c20b8e915ec1ace63b84353bdbfcc86cda1cd2b31f49f8a70df799cb29283688"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.7/brain-linux-arm64.tar.gz"
      sha256 "45b22362e1fd0b5685862e71a780c13f87298c0c20615e7f68f95edd08089b47"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.7/brain-linux-x64.tar.gz"
      sha256 "d4437befce5ebc6c143eba2f01d9e753201e54c057afd4a97080258ab9ad72f7"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
