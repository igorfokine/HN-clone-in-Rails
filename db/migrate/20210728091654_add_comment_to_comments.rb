# frozen_string_literal: true

class AddCommentToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :comment, null: true, foreign_key: true
  end
end
