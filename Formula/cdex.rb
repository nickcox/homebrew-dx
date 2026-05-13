class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-macos-arm64"
      sha256 "049af039d186698b1634aca77beef24b267abfb03e40b9af90255401e06e519d"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-macos-x86_64"
      sha256 "89232469fa263a01c4bc1f1c4acc1af8b0ac6fdcf14f49c66c2532b640ca1c04"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-linux-arm64"
      sha256 "b8d541bbef433a00d930e5f66d61d8e1af171687be9cd2224b2bf0dc6e6b4d14"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-linux-x86_64"
      sha256 "172375268021b70705d1ce8d1f1743f66c2d2a7ea08b7c8ba68a671598b39053"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
