class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.5.0/dx-macos-arm64"
      sha256 "67b262fe83b90d876638a4a4aeb88546a9469979766df512d9a7a5b552ec52d1"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.5.0/dx-macos-x86_64"
      sha256 "f93fc4ac1f0e442ef26a9e26eb5821a7e5126742153b0d82afb22612b0eb750c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.5.0/dx-linux-arm64"
      sha256 "0e51b12317d08e7c2a63bec3f8240ff8ee5e54c6dc31dab582082cf62ba6ec93"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.5.0/dx-linux-x86_64"
      sha256 "696872947592f64f813499b2c815a8a9e15310d11e75aa93475d8838104438fb"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
