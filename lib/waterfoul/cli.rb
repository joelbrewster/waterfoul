require "thor"
module Waterfoul
  class CLI < Thor
    desc 'start ROM', 'start the emulator'
    option :skip_boot
    def start(rom_file)
      emu = Waterfoul::Emulator.new rom_file, options
      emu.run
    end
  end
end

