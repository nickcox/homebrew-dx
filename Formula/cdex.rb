class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  version "0.6.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.6.0/dx-macos-arm64"
      sha256 "f5cb86ac3544750b026e7f17f7af0235a8ae98a8a38828a63909387ca9e263e9"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.6.0/dx-macos-x86_64"
      sha256 "c999989d63be996a7b5c385b83de9164955e1b2cf2468411ed9766da7f498ddc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.6.0/dx-linux-arm64"
      sha256 "59dd8d6fb60f56ba2d421e4e96fdbde13972bb632d0f7a27af6a9d49fb82110a"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.6.0/dx-linux-x86_64"
      sha256 "25a54ead07f8ac674e4f4aa446a65e9110542262c276b3499c9c258a32a5b357"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
