class ChangeColumnToKiite < ActiveRecord::Migration[5.2]
  def change
    # 変更内容
    def up
      change_column :kiites, :sokka, :integer, null: false, default: 0
    end

  # 変更前の状態
    def down
      change_column :kiites, :sokka, :integer
    end
  end
end
