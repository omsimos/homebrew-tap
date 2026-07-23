class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed"
  homepage "https://github.com/omsimos/nosleep"
  url "https://github.com/omsimos/nosleep/releases/download/v0.0.2/nosleep-0.0.2.tar.gz"
  version "0.0.2"
  sha256 "fe7e483a5340ea5c1495354856160fa21dffaa6c1f7e5ddf0feeaad808e02858"
  license "MIT"
  head "https://github.com/omsimos/nosleep.git", branch: "main"

  depends_on :macos

  def install
    bin.install "nosleep", "nosleep-brightness"
  end

  test do
    assert_match "Usage: nosleep", shell_output("#{bin}/nosleep --help")
    assert_match "Usage: nosleep-brightness", shell_output("#{bin}/nosleep-brightness --help")
  end
end
