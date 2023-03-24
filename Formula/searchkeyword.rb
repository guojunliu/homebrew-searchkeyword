# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Searchkeyword < Formula
  desc "关键字扫描工具"
  homepage "https://github.com/guojunliu/homebrew-searchkeyword"
  url "https://github.com/guojunliu/homebrew-searchkeyword/raw/master/product/1.0.0/searchkeyword_1.0.0.tar.gz"
  version "1.0.0"
  sha256 "766bd788ebca17f24f79d1d219d092a8bddac00fe57a936749141a90591f0586"
  license "MIT"

  def install
      bin.install "searchkeyword"
  end
end
