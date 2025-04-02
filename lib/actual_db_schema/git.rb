# frozen_string_literal: true

module ActualDbSchema
  # Git helper
  class Git
    def self.current_branch
      `git rev-parse --abbrev-ref HEAD 2>/dev/null`.strip
    rescue Errno::ENOENT
      "unknown"
    end
  end
end
