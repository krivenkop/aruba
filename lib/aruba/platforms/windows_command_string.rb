require 'delegate'

# Aruba
module Aruba
  # Platforms
  module Platforms
    # This is a command which should be run
    #
    # This adds `cmd.exec` in front of commmand
    #
    # @private
    class WindowsCommandString < SimpleDelegator
      # Convert to array
      def to_a
        [cmd_path, '/c', __getobj__]
      end

      private

      def cmd_path
        Aruba.platform.which('cmd.exe')
      end
    end
  end
end
