# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Searchkeyword < Formula
  desc "关键字扫描工具"
  homepage "https://github.com/guojunliu/homebrew-searchkeyword"
  url "https://github.com/guojunliu/homebrew-searchkeyword/raw/master/product/1.0.1/searchkeyword_1.0.1.tar.gz"
  version "1.0.1"
  sha256 "8552c5938a46816bf12dd0232cd0c350fdcbb40b02fe6b0a9cbff4781c453aa6"
  license "MIT"

  def install
      bin.install "searchkeyword"
  end
end
