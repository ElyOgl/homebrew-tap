class Vigil < Formula
  desc "Fast, beautiful terminal system monitor (P/E cores, memory pressure, GPU)"
  homepage "https://github.com/ElyOgl/vigil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ElyOgl/vigil/releases/download/v0.1.0/vigil-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae9ae9e7f5f121c563e6f9bb4def625e384d98460fc1f8d350522e7ce92b65a0"
    end
    on_intel do
      url "https://github.com/ElyOgl/vigil/releases/download/v0.1.0/vigil-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d7fb1f8a59ec38c3c23bdd58dc466f0f7d5d3993ff27b1fd295d20a7856990ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ElyOgl/vigil/releases/download/v0.1.0/vigil-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf715430baca88fe951552bec125312af93ffe7fe088fdbd000ed39cd77e3532"
    end
    on_intel do
      url "https://github.com/ElyOgl/vigil/releases/download/v0.1.0/vigil-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0cb944bdbd12444d3e41f0606ce57b25a53cea367bc2dc2c121cfa6756bf7afb"
    end
  end

  def install
    bin.install "vigil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vigil --version")
    assert_match "logical_cores", shell_output("#{bin}/vigil --json --top 1")
  end
end
