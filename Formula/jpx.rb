# Generated with JReleaser 1.26.0

class Jpx < Formula
  desc "Runs a published module or Maven artifact with one command"
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.15.2/jpx-0.15.2.zip"
  version "0.15.2"
  sha256 "7bfc185f48e83b5c24a8a8fd92baeae9a13733c2ab5c0ddf83ec506ff1b1f53f"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/jpx"
  end

  test do
    assert_match "Usage: jpx", shell_output("#{bin}/jpx --help")
  end
end
