class Snippy < Formula
    desc "CLI tool to generate Git commit messages"
    homepage "https://github.com/narashin/snippy"
    url "https://github.com/narashin/homebrew-snippy/releases/download/v3.0.1/snippy-v3.0.1.whl"
    sha256 "d463196982430513d1d2ada7b4f64d10f0de6ae9c696e3ec44082e99d0aa63df"
    license "MIT"

    depends_on "python@3.12"

    def install
      whl_file = "snippy-#{version}-py3-none-any.whl"
      mv cached_download, whl_file

      system "pip3", "install", "--upgrade", "--target=#{libexec}", whl_file

      # 직접 실행 스크립트 생성
      (bin/"snippy").write <<~EOS
        #!/bin/bash
        export PYTHONPATH="#{libexec}:$PYTHONPATH"
        exec "#{Formula["python@3.12"].opt_bin}/python3" "#{libexec}/bin/snippy" "$@"
      EOS

      chmod 0755, bin/"snippy"
    end

    test do
      system "#{bin}/snippy", "--help"
    end
  end