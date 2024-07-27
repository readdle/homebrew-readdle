
class S7 < Formula
  desc "Git submodules system for mere mortals."
  homepage "https://github.com/readdle/system7"
  license "MIT"

  url "https://github.com/readdle/system7/releases/download/v1.0.1/s7.tar.gz"
  sha256 "9dd6129c62120d2f26d622e752d62a821853a6b9c6125fe2795e9cc7139e0d71"
  version "1.0" # have to specify version explicitly as automatic detection is confused by 7 in the name of s7 :)

  def install
    bin.install "s7"
  end

  def caveats
    <<~EOS

      Update your git config to finish installation.
      This is optional, but will allow s7 to automatically take
      care of newly cloned s7 repos:

        $ git config --global filter.s7.smudge "s7 bootstrap"

    EOS
  end
end
