class Cdex < Formula
  desc "Directory navigation CLI/TUI"
  homepage "https://github.com/nickcox/dx"
  license "MIT"
  version "0.7.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.7.0/dx-macos-arm64"
      sha256 "bb32de736112410882f5e83f93afe903413a37e0c90d63e5b4fa5adb63932a9d"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.7.0/dx-macos-x86_64"
      sha256 "51d0627c044d8f405a1854d326abe1d5f519b5697aeaa2caad524a29109b60b6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nickcox/dx/releases/download/v0.7.0/dx-linux-arm64"
      sha256 "53f1b500e60c7b32df2a6b798b2ea3f1db73ebef68847133ff72e9f0935c7940"
    else
      url "https://github.com/nickcox/dx/releases/download/v0.7.0/dx-linux-x86_64"
      sha256 "3971d0c63520f014a46216fa8be5ce1ea47c18568f8212981534285711862f4d"
    end
  end
  def install
    bin.install Dir["dx-*"].first => "dx"
  end
  test do
    assert_match "Usage:", shell_output("#{bin}/dx --help")
  end
end
