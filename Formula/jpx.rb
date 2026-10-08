# Generated with JReleaser 1.26.0

class Jpx < Formula
  desc "Runs a published module or Maven artifact with one command"
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.15.5/jpx-0.15.5.zip"
  version "0.15.5"
  sha256 "757ee21e75b37a9b637ec4f916937515bbcef90cb1dcfbb05a0c11b8550f52fe"
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
