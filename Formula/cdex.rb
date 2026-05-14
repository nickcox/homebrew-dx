class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-macos-arm64"
      sha256 "9e02090eb4fdbb38ea7be70822d1ac2bd7ea2f3cc255a1f72d6f46f8b53ae09f"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-macos-x86_64"
      sha256 "6558dd9c081d659af6069415798d59c1165eb214bdb04754b5f4cd74d9d116b9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-linux-arm64"
      sha256 "79dc34825b0675c35453358a69c8a0d42adf34161bced235c3be97e625ae140a"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.4.0/dx-linux-x86_64"
      sha256 "f32b37185e0626fe85c20d643ae7c08477f16acfe0d95a9f726bc50a0ac3abb4"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
