class RenameContextToContent < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :microposts, :context, :content
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
