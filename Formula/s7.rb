
class S7 < Formula
  desc "Git submodules system for mere mortals."
  homepage "https://github.com/readdle/system7"
  license "MIT"

  url "https://github.com/readdle/system7/releases/download/v0.9/s7"
  sha256 "6468959b19c94b2eb9c0ed764aa5dca78e4957c5effed16c6018ddc55802892a"
  version "0.9" # have to specify version explicitly as automatic detection is confused by 7 in the name of s7 :)

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
