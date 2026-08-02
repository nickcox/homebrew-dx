class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.13.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.13.0/dx-macos-arm64"
      sha256 "8a6a6c7509a2eb43bed5caf95bbc4f868dec4829fd5cb34efa4e59938380b135"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.13.0/dx-macos-x86_64"
      sha256 "0efebb77470bf2a43a3e5d17a73434206120d7528c8cb12fccf318470856d547"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.13.0/dx-linux-arm64"
      sha256 "06eb9302ce5f84669693a3b727caa8472d4af0da716b86afff6dc2a0c807ecfd"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.13.0/dx-linux-x86_64"
      sha256 "4aca3ea12fdc2b54c993b43f78d5355c5c7455c62719aee8a6644ad2c1592f5e"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
