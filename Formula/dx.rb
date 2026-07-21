class Dx < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  version "0.11.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.11.0/dx-macos-arm64"
      sha256 "a92de66e0ac6f8ca9b20537f831610f182587ce3338ac25b74dbc8b803d85725"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.11.0/dx-macos-x86_64"
      sha256 "75053dfe86bf971778facb7eeb322448794dde7aea26ebbaa8ebd76268e9c136"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.11.0/dx-linux-arm64"
      sha256 "638378bee44fa06c40fd4d65cc82e4e6314bb5b41b3b101967d80d26e50c2e19"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.11.0/dx-linux-x86_64"
      sha256 "b0d8e3a45d6a59be2e68146392aba26420b453372b43b84edf5e1c687edc8733"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
