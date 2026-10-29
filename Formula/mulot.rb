class Mulot < Formula
  desc "Fast, beautiful terminal system monitor (P/E cores, memory pressure, GPU)"
  homepage "https://github.com/ElyOgl/mulot"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ElyOgl/mulot/releases/download/v0.2.0/mulot-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a026d8d6aa7a1bf750c208791ae6c1520ac12dd93c3dadb8477584c58da9339"
    end
    on_intel do
      url "https://github.com/ElyOgl/mulot/releases/download/v0.2.0/mulot-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c139991d97bed87b74220b375e4895e8bc2eabd6fe962736e95fc7988e380c0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ElyOgl/mulot/releases/download/v0.2.0/mulot-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a95ac72ccabc1a5eadec9142287b26571be388456cc447aa514aaf29c23a040d"
    end
    on_intel do
      url "https://github.com/ElyOgl/mulot/releases/download/v0.2.0/mulot-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "833187128090939b723927f95056df78fcbfd58ff86e15d9dce95dcd8e646ee7"
    end
  end

  def install
    bin.install "mulot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mulot --version")
    assert_match "logical_cores", shell_output("#{bin}/mulot --json --top 1")
  end
end
