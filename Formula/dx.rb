class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.10.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.10.0/dx-macos-arm64"
      sha256 "19cde487a9e811ec7a920b907981815706a4efda02c51d6d0f9c77d0fdf97932"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.10.0/dx-macos-x86_64"
      sha256 "8908f1b2521a962ac596f8ecbc4311878cdfee9c1e3c3592f5a97e403e8baf82"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.10.0/dx-linux-arm64"
      sha256 "cd2499030036002805351e72f3e5a7215e2b4ff17e640a59eb2bd772a246e49d"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.10.0/dx-linux-x86_64"
      sha256 "f9b82006ed86b35924ab4b02b5d8a1e74a0331f2dfb531234dbefb43f18f4786"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
