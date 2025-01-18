class Replace < Formula
    include Language::Python::Virtualenv
  
    desc "A Python script to replace text in files"
    homepage "https://github.com/hantao-zhou/replace"
    url "https://github.com/hantao-zhou/replace/archive/refs/tags/v0.2.tar.gz"
    sha256 "7321ba9f6b0484e38d4d6e8e07d7423233cdb16546338a6f69f98c134eac0d4c"
    license "MIT"
  
    depends_on "python@3.12"
  
    def install
      bin.install "bin/replace.py"
      # Make the script executable
      bin.install_symlink "replace.py" => "replace"
    end
  
    test do
      system "#{bin}/replace", "--version"
    end
  end
  