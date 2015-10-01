class HaptixComm < Formula
  desc "Haptix project communication API"
  homepage "http://gazebosim.org/haptix"
  url "http://gazebosim.org/distributions/haptix-comm/releases/haptix-comm-0.7.2.tar.bz2"
  sha256 "1189343e4428a4ac0059b8013b2f05bccda92e2f5eb3349835d2280d807560b5"
  head "https://bitbucket.org/osrf/haptix-comm", :branch => "default", :using => :hg

  depends_on "cmake" => :build
  depends_on "doxygen" => [:build, :optional]
  depends_on "pkg-config" => :build

  depends_on "ignition-transport"
  depends_on "protobuf"
  depends_on "protobuf-c" => :build
  depends_on "zeromq"
  depends_on "cppzmq"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
