class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.2.0/dx-macos-arm64"
      sha256 "68afa49b84537db9b517262895f485299b73c3fafd172868b9d8a6f78f80f838"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.2.0/dx-macos-x86_64"
      sha256 "23e143a7fdf17a7d39360413c56e4b1c7a408e35797efc49ef75f4159703e4c7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.2.0/dx-linux-arm64"
      sha256 "0d7e4dbb4f09ce028f412d63be1b037a276d1d46be24efc7564dcee0ab705fb1"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.2.0/dx-linux-x86_64"
      sha256 "aabb61cbceea095b04f6c099223de2490f0e50c7e2c21dc811644fc5fa5cb4cf"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
