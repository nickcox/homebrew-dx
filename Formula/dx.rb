class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.8.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.8.0/dx-macos-arm64"
      sha256 "9be55cef552f1ec95dfca7968edbcd6434e21e2df29fd2527d2bceed763743a4"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.8.0/dx-macos-x86_64"
      sha256 "6d8207d0b906bf3f8dbc75424b2fc6c2310dc5c5bad93368976758e6146c6cd1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.8.0/dx-linux-arm64"
      sha256 "46677a106bd24c089514cad14439b18ebec6385160942473766a8c4e2123bebe"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.8.0/dx-linux-x86_64"
      sha256 "795c29b66322812d4bb66b55e8feb2ed994c8a3b14655069041919e7944271ce"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
