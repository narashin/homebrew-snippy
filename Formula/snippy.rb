class Snippy < Formula
  desc "CLI tool for Git commit templates with emoji support"
  homepage "https://github.com/narashin/snippy"
  url "https://github.com/narashin/homebrew-snippy/releases/download/v1.0.22/snippy-v1.0.22.tar.gz"
  sha256 "099b865b9b308601326dabb78a4b14390cd76c0f4a1c550952408cb5d9a7b9ec"
  license "MIT"

  def install
    libexec.install "snippy", "_internal"

    (bin/"snippy").write_env_script libexec/"snippy", PYTHONHOME: libexec
  end

  test do
    system "#{bin}/snippy", "--help"
  end
end