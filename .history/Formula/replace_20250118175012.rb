class Replace < Formula
    include Language::Python::Virtualenv
  
    desc "A Python script to replace text in files"
    homepage "https://github.com/hantao-zhou/replace"
    url "https://github.com/hantao-zhou/replace/archive/refs/tags/v0.2.tar.gz"
    sha256 "ec8f20a8742d684275059aadb11942bf0342a8d79f2b4c056fe4f2905b13fa55"
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
  