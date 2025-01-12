class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.1.2/snippy-v1.1.2.tar.gz"
  sha256 "e0f2e0fdb1f1a1f6f70216c5daa087388c4f1c2ffe9c02e7384236bd6a520153"
  license "MIT"

  def install
    libexec.install "snippy", "_internal"

    (bin/"snippy").write_env_script libexec/"snippy", PYTHONHOME: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end