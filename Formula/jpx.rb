# Generated with JReleaser 1.26.0 at 2026-09-10T00:30:45.688486092+02:00

class Jpx < Formula
  desc "Runs a published module or Maven artifact with one command"
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.12.0/jpx-0.12.0.zip"
  version "0.12.0"
  sha256 "7d98f4b9c1592fac46fea3a867e6032d890e64fc611dcfbcb9fe527cf82538f2"
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
