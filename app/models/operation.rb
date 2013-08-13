class Operation < ActiveRecord::Base
  attr_accessible :command, :finished, :stderr, :stdout

  def execute
    result = systemu(self.command)
    update_attributes(:finished => result[0].success?,
                      :stdout => result[1],
                      :stderr => result[2])
  end
end
