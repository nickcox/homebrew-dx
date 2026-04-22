class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.1.0/dx-macos-arm64"
      sha256 "b20ec6498b695699d403a79a31e34e630101ae653e23551ade7015a5c397777f"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.1.0/dx-macos-x86_64"
      sha256 "9d7f7f204615fbcaf0300a7bfe1e1d8b4f9c045d0fd1ea942c8684c5b0e0e9d5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.1.0/dx-linux-arm64"
      sha256 "047b41836d3adaa7648ffd53da9b69c799f88cc363b5b161416e0af4aeabb153"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.1.0/dx-linux-x86_64"
      sha256 "013c0b3ab819d9e8218c31654876c007a6c95706eeb260a501bdd17801774585"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
