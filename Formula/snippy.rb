class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.1.4/snippy-v1.1.4.tar.gz"
  sha256 "681ac0542633c94fdcbb8e718ae97dfe31d82e2b670b8c24e4981d9dfab212f1"
  license "MIT"

  def install
    libexec.install "snippy", "_internal"

    (bin/"snippy").write_env_script libexec/"snippy", PYTHONHOME: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end