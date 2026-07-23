class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed"
  homepage "https://github.com/omsimos/nosleep"
  url "https://github.com/omsimos/nosleep/releases/download/v0.0.1/nosleep-0.0.1.tar.gz"
  version "0.0.1"
  sha256 "3cd178afeb3c52187b197e2fa6f2c0540bec19954bcf4cd479403b9dad0e69df"
  license "MIT"
  head "https://github.com/omsimos/nosleep.git", branch: "main"

  depends_on :macos

  def install
    bin.install "nosleep"
  end

  test do
    assert_match "Usage: nosleep", shell_output("#{bin}/nosleep --help")
  end
end
