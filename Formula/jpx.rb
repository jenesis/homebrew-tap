# Generated with JReleaser 1.26.0

class Jpx < Formula
  desc "Runs a published module or Maven artifact with one command"
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.15.3/jpx-0.15.3.zip"
  version "0.15.3"
  sha256 "1316fc31034471dd84d4f3d271c066d1cc7061a94b15d3385b39d893de0ef2c0"
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
