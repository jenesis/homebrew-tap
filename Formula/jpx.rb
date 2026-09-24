# Generated with JReleaser 1.26.0

class Jpx < Formula
  desc "Runs a published module or Maven artifact with one command"
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.15.0/jpx-0.15.0.zip"
  version "0.15.0"
  sha256 "0c312a3fcb736f57e40b49fecbb5a165124a264aa877bb2de17f656b43929446"
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
