class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.1.12/snippy-v1.1.12.tar.gz"
  sha256 "6e61d4a2f1feade14cfecfe619c132dec05d89a7d168b394dfd0ce179023fa2d"
  license "MIT"

  def install
    libexec.install "snippy", "_internal"

    (bin/"snippy").write_env_script libexec/"snippy", PYTHONHOME: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end