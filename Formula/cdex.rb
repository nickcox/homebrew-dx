class Cdex < Formula
  desc "Directory navigation CLI and shell integration toolkit"
  homepage "https://github.com/nickcox/dx"
  url "https://github.com/nickcox/dx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "542877ad4c251eee38fb17aa4c04d890249f35d3949d0f1a931ed4285dde470c"
  license "MIT"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end
  test do
    assert_match "dx", shell_output("#{bin}/dx --help")
  end
end
