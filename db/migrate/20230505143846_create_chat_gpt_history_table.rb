class CreateChatGptHistoryTable < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_gpt_histories do |t|
      t.text :search_text
      t.text :search_result

      t.timestamps
    end
  end
end
