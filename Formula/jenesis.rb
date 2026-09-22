# Generated with JReleaser 1.26.0

class Jenesis < Formula
  desc "A Java-native build tool."
  homepage "https://github.com/jenesis/jenesis"
  url "https://github.com/jenesis/jenesis/releases/download/v0.14.1/jenesis-0.14.1.zip"
  version "0.14.1"
  sha256 "4a63cc8202f5fd08d1a846fe9984840607af03eb1159cc62a3acaaa87c302d20"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    Dir["#{libexec}/bin/*"].each do |command|
      name = File.basename(command)
      next if name.end_with?(".bat")
      if name == "jenesis-switch"
        # sourced by the calling shell, so it is linked rather than wrapped in an exec
        bin.install_symlink command => name
      else
        bin.write_exec_script command
      end
    end
  end

  test do
    system bin/"jenesis-init"
    assert_predicate testpath/"build/jenesis/jenesis.version", :exist?
    assert_match version.to_s, shell_output("#{bin}/jenesis-version")
  end
end
