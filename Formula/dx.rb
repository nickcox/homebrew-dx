class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.9.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-macos-arm64"
      sha256 "05f18524aa7c004bd9937c9a8afb95ff1533df8d02cb089e38bdd77e54a4e58a"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-macos-x86_64"
      sha256 "f610a82ccff15b8a2ef6316eebfd182e0b707198c9b08f2e25309c3d9286da53"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-linux-arm64"
      sha256 "3eb13ec28c540657f15ea6eeb8ee86189e66f8d858f099e5a04fb676f9877ed1"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.9.0/dx-linux-x86_64"
      sha256 "39ff8bd28b48bcb3b707884ba7eca5bf2ce565d2586391de1b7b066954502e5e"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
