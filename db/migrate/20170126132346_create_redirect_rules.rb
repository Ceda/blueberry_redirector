class CreateRedirectRules < ActiveRecord::Migration[5.0]
  def change
    create_table :redirect_rules do |t|
      t.string :source, null: false
      t.boolean :source_is_regex, null: false, default: false
      t.boolean :source_is_case_sensitive, null: false, default: false
      t.string :destination, null: false
      t.boolean :active, default: false
      t.timestamps
    end

    create_table :request_environment_rules do |t|
      t.integer :redirect_rule_id, null: false
      t.string :environment_key_name, null: false
      t.string :environment_value, null: false
      t.boolean :environment_value_is_regex, null: false, default: false
      t.boolean :environment_value_is_case_sensitive, null: false, default: true
      t.timestamps
    end

    add_index :redirect_rules, :source
    add_index :redirect_rules, :active
    add_index :redirect_rules, :source_is_regex
    add_index :redirect_rules, :source_is_case_sensitive

    add_index :request_environment_rules, :redirect_rule_id
  end
end
