class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.12.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.12.0/dx-macos-arm64"
      sha256 "c99b7cc5c7dbacc96564f9efa09f69e0f3a3a01a10b81cf73e432f9289d6bb0f"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.12.0/dx-macos-x86_64"
      sha256 "58036b098b649f72aff1cd4f2e8e0be181162a9b6d069cee64987e4b55ad26e5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.12.0/dx-linux-arm64"
      sha256 "b89a0b9a4d283e28a04373f0a805e5554a557ca33271606796d7ad4e0f3ebddf"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.12.0/dx-linux-x86_64"
      sha256 "c95087607f876a22d0184cbb30ea2be919289069b73f45a191f69227e2f155a4"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
