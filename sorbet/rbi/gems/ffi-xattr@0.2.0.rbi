# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ffi-xattr` gem.
# Please instead update this file by running `bin/tapioca gem ffi-xattr`.

# source://ffi-xattr//lib/ffi-xattr/version.rb#1
class Xattr
  include ::Enumerable

  # Create a new Xattr instance with path.
  # Use <tt>:no_follow => true</tt> in options to work on symlink itself instead of following it.
  #
  # @raise [Errno::ENOENT]
  # @return [Xattr] a new instance of Xattr
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#23
  def initialize(path, options = T.unsafe(nil)); end

  # Get an extended attribute value
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#43
  def [](key); end

  # Set an extended attribute value
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#49
  def []=(key, value); end

  # source://ffi-xattr//lib/ffi-xattr.rb#77
  def as_json(*args); end

  # Iterates over pairs of extended attribute names and values
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#60
  def each(&blk); end

  # Get an extended attribute value
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#43
  def get(key); end

  # List extended attribute names
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#38
  def list; end

  # Remove an extended attribute value
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#55
  def remove(key); end

  # Set an extended attribute value
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#49
  def set(key, value); end

  # Returns hash of extended attributes
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#68
  def to_h; end

  # Returns hash of extended attributes
  #
  # source://ffi-xattr//lib/ffi-xattr.rb#68
  def to_hash; end
end

# source://ffi-xattr//lib/ffi-xattr/error.rb#2
module Xattr::Error
  extend ::FFI::Library

  def strerror_r(*_arg0); end

  class << self
    # @raise [SystemCallError]
    #
    # source://ffi-xattr//lib/ffi-xattr/error.rb#18
    def check(int); end

    # source://ffi-xattr//lib/ffi-xattr/error.rb#10
    def last; end

    def strerror_r(*_arg0); end
  end
end

# source://ffi-xattr//lib/ffi-xattr/linux_lib.rb#2
module Xattr::Lib
  extend ::FFI::Library

  def getxattr(*_arg0); end
  def lgetxattr(*_arg0); end
  def listxattr(*_arg0); end
  def llistxattr(*_arg0); end
  def lremovexattr(*_arg0); end
  def lsetxattr(*_arg0); end
  def removexattr(*_arg0); end
  def setxattr(*_arg0); end
  def strerror(*_arg0); end

  class << self
    # source://ffi-xattr//lib/ffi-xattr/linux_lib.rb#29
    def get(path, no_follow, key); end

    def getxattr(*_arg0); end
    def lgetxattr(*_arg0); end

    # source://ffi-xattr//lib/ffi-xattr/linux_lib.rb#20
    def list(path, no_follow); end

    def listxattr(*_arg0); end
    def llistxattr(*_arg0); end
    def lremovexattr(*_arg0); end
    def lsetxattr(*_arg0); end

    # source://ffi-xattr//lib/ffi-xattr/linux_lib.rb#45
    def remove(path, no_follow, key); end

    def removexattr(*_arg0); end

    # source://ffi-xattr//lib/ffi-xattr/linux_lib.rb#40
    def set(path, no_follow, key, value); end

    def setxattr(*_arg0); end
    def strerror(*_arg0); end
  end
end

# source://ffi-xattr//lib/ffi-xattr/version.rb#2
Xattr::VERSION = T.let(T.unsafe(nil), String)
