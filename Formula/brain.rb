class Brain < Formula
  desc "Local and shared project-knowledge service for coding agents"
  homepage "https://github.com/karmahacker/brain"
  version "0.2.10"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.10/brain-darwin-arm64.tar.gz"
      sha256 "aa013ec7b9429fa04c2b5fd3f90facf80ca0d42db604f91bcaa44de314d2543f"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.10/brain-darwin-x64.tar.gz"
      sha256 "6206d91187e79715fc3228edc3402ebeed5f263ba29925af7fe72217c82246e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.10/brain-linux-arm64.tar.gz"
      sha256 "7397cc6c59429f755d773bcf44eb20a934fde61f5284d710a54cd9182a09ee9c"
    else
      url "https://github.com/karmahacker/homebrew-tap/releases/download/v0.2.10/brain-linux-x64.tar.gz"
      sha256 "b6890faeae28f13e3d835c1d2af8e1c940c6b755db310fc4ac304744962d60cd"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
