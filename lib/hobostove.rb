#!/usr/bin/env ruby

require 'tinder'
require 'active_support/core_ext'
require 'ncurses'
require 'notify'
require 'values'

require 'hobostove/models/message'
require 'hobostove/models/user'

require 'hobostove/message_renderer'

require 'hobostove/cli/setup'
require 'hobostove/cli/upgrade'
require 'hobostove/cli/room_picker'

require 'hobostove/configuration'
require 'hobostove/panel'
require 'hobostove/input_panel'
require 'hobostove/user_panel'
require 'hobostove/window'

module Hobostove
  def self.logger
    @logger ||= Logger.new(Configuration.log_file, 1, 1024000)
  end
end
