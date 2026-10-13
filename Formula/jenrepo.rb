# Generated with JReleaser 1.26.0

class Jenrepo < Formula
  desc "Operate a Jenesis repository from the command line"
  homepage "https://github.com/jenesis/jenesis-repository"
  url "https://github.com/jenesis/jenesis-repository/releases/download/v0.8.1/jenrepo-0.8.1.zip"
  version "0.8.1"
  sha256 "0593d4121463cbf6a4b23e28cba5475a166330ba7d55363e1d596be7053a2fce"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    (bin/"jenrepo").write_env_script libexec/"bin/jenrepo",
      Language::Java.overridable_java_home_env("25")
  end

  test do
    assert_match "Usage: jenrepo", shell_output("#{bin}/jenrepo --help")
  end
end
