class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.9.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-macos-arm64"
      sha256 "98265dafc61981e4f8e49247f930f3eee99eb8e282efc1a529eb9ca10e5fd215"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-macos-x86_64"
      sha256 "46b692492d99390baec5cf61a9c1edb923e3255432fe10d5e0ccc3b98fa60f1e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-linux-arm64"
      sha256 "5ec351cd0c02eb6a3002703e781026176d32a0de35df39fb4c6c092f53b6dbe5"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-linux-x86_64"
      sha256 "c3fefdb445d2a56619736378091b976da5c39e76dd7ec1208b611fbffe81191e"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
