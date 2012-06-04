class AdicionarDeviseEmFuncionarios < ActiveRecord::Migration
  def up
    change_table(:funcionarios) do |t|
      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      # Lockable
       t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
       t.string   :unlock_token # Only if unlock strategy is :email or :both
       t.datetime :locked_at

      ## Token authenticatable
      # t.string :authentication_token
    end

    add_index :funcionarios, :email,                :unique => true
    add_index :funcionarios, :reset_password_token, :unique => true
    # add_index :usuarios, :confirmation_token,   :unique => true
    add_index :funcionarios, :unlock_token,         :unique => true
    # add_index :usuarios, :authentication_token, :unique => true
  end

  def down
    remove_index :funcionarios, :email
    remove_index :funcionarios, :reset_password_token
    remove_index :funcionarios, :unlock_token

    change_table(:funcionarios) do |t|
      ## Database authenticatable
      t.remove :encrypted_password

      ## Recoverable
      t.remove   :reset_password_token
      t.remove :reset_password_sent_at

      ## Trackable
      t.remove  :sign_in_count
      t.remove :current_sign_in_at
      t.remove :last_sign_in_at
      t.remove   :current_sign_in_ip
      t.remove   :last_sign_in_ip

      # Lockable
       t.remove  :failed_attempts
       t.remove   :unlock_token # Only if unlock strategy is :email or :both
       t.remove :locked_at

      ## Token authenticatable
      # t.string :authentication_token
    end
  end
end
