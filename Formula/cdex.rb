class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.3.0/dx-macos-arm64"
      sha256 "e512866dbe5b28b4c3653efdcb2753b26168b35bd02d7d1d4b7492d7ba722fae"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.3.0/dx-macos-x86_64"
      sha256 "9a9d166295492236b40c12a9dc1190c975e8ac8076b2422a8cb6c0aa053c7bc4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.3.0/dx-linux-arm64"
      sha256 "eed9194a7be9d5420f79a8177c2feefc7d98cb9855e07ab258945598af111aa8"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.3.0/dx-linux-x86_64"
      sha256 "1976c63da0711e7f8f7880f1c6cc7814f2ff69041a67955b203dd7b3d00e1309"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
