class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :image
      t.string :first_name
      t.string :last_name
      t.string :roles_mask
      ## Database authenticatable
      t.string :encrypted_password
    
      ## Recoverable
      t.string :reset_password_tokent
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer :sign_in_count
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip

      ## Confirmable
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.datetime :unconfirmed_email

      ## Lockable
      # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
      # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
      # field :locked_at,       :type => Time

      ## Token authenticatable
      # field :authentication_token, :type => String
    end
  end
end
  