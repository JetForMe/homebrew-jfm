require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#								 /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class ArmLlvmBinutils < Formula
	homepage "http://www.gnu.org/software/binutils/"
	url "http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2"
	sha1 "7ac75404ddb3c4910c7594b51ddfc76d4693debb"

	keg_only "Don't want to muck up /usr/local for now"
	
	
	# depends_on "cmake" => :build
	#depends_on clang

	def install
		# ENV.deparallelize	 # if your formula fails when building in parallel
		ohai "hello there"
		
		# Remove unrecognized options if warned by configure
		#system "./configure",
		#			"--disable-debug",
		#			"--disable-dependency-tracking",
		#			"--disable-silent-rules",
		#			"--prefix=#{prefix}"
		# system "cmake", ".", *std_cmake_args
		#system "make", "install" # if this fails, try separate make/make install steps
	end

	test do
		# `test do` will create, run in and delete a temporary directory.
		#
		# This test will fail and we won't accept that! It's enough to just replace
		# "false" with the main program this formula installs, but it'd be nice if you
		# were more thorough. Run the test with `brew test arm-llvm-binutils`.
		#
		# The installed folder is not in the path, so use the entire path to any
		# executables being tested: `system "#{bin}/program", "do", "something"`.
		system "false"
	end
end
