# Generated with JReleaser 1.26.0

class Jpx < Formula
  desc "Runs a published module or Maven artifact with one command"
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.18.2/jpx-0.18.2.zip"
  version "0.18.2"
  sha256 "d214dded312f2ce021f79b3ccf6933221b3ca27dab0f968fcc797e078142010e"
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
