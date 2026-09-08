# Generated with JReleaser 1.26.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.12.0/jenesis-0.12.0.zip"
  version "0.12.0"
  sha256 "33249b9f373e2d4b4042993e625bb49d9db9bf407485cfb741ffca4230cca904"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jenesis" => "jenesis"
  end

  test do
    output = shell_output("#{bin}/jenesis --version")
    assert_match "0.12.0", output
  end
end
