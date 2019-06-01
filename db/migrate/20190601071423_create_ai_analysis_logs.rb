class CreateAiAnalysisLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :ai_analysis_logs do |t|
      t.string     :image_path
      t.string     :success
      t.string     :message
      t.integer    :class
      t.decimal    :confidence, precision: 5, scale: 4
      t.timestamps
    end
  end
end
