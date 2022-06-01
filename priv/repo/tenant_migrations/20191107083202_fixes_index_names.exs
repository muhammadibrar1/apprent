defmodule AppCount.Repo.Migrations.FixesIndexNames do
  use Ecto.Migration

  def change do
    execute "alter index IF EXISTS #{prefix()}.vendors_skills_vendor_id_category_id_index rename to vendors__skills_vendor_id_category_id_index"
    execute "alter index IF EXISTS #{prefix()}.vendor_properties_vendor_id_property_id_index rename to vendor__properties_vendor_id_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.rewards_types_name_index rename to rewards__types_name_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_purchases_prize_id_index rename to rewards__purchases_prize_id_index"
    execute "alter index IF EXISTS #{prefix()}.rewards_purchases_property_id_index rename to rewards__purchases_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_vehicles_application_id_index rename to rent_apply__vehicles_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_saved_forms_email_property_id_index rename to rent_apply__saved_forms_email_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_rent_applications_admin_payment_id_index rename to rent_apply__rent_applications_admin_payment_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_rent_applications_device_id_index rename to rent_apply__rent_applications_device_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_rent_applications_payment_id_index rename to rent_apply__rent_applications_payment_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_rent_applications_property_id_index rename to rent_apply__rent_applications_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_pets_application_id_index rename to rent_apply__pets_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_persons_application_id_index rename to rent_apply__persons_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_move_ins_application_id_index rename to rent_apply__move_ins_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_incomes_application_id_index rename to rent_apply__incomes_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_histories_application_id_index rename to rent_apply__histories_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_employments_application_id_index rename to rent_apply__employments_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_employments_person_id_index rename to rent_apply__employments_person_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_emergency_contacts_application_id_index rename to rent_apply__emergency_contacts_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.rent_apply_documents_application_id_index rename to rent_apply__documents_application_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_showings_property_id_index rename to prospects__showings_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_showings_prospect_id_index rename to prospects__showings_prospect_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_showings_unit_id_index rename to prospects__showings_unit_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_prospects_admin_id_index rename to prospects__prospects_admin_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_prospects_property_id_index rename to prospects__prospects_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_prospects_traffic_source_id_index rename to prospects__prospects_traffic_source_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_openings_property_id_index rename to prospects__openings_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.prospects_memos_prospect_id_index rename to prospects__memos_prospect_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_visits_property_id_index rename to properties__visits_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_visits_tenant_id_index rename to properties__visits_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_units_floor_plan_id_index rename to properties__units_floor_plan_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_units_property_id_number_index rename to properties__units_property_id_number_index"
    execute "alter index IF EXISTS #{prefix()}.properties_units_uuid_index rename to properties__units_uuid_index"
    execute "alter index IF EXISTS #{prefix()}.properties_unit_features_unit_id_feature_id_index rename to properties__unit_features_unit_id_feature_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_settings_property_id_index rename to properties__settings_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_scopings_property_id_entity_id_index rename to properties__scopings_property_id_entity_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_properties_code_index rename to properties__properties_code_index"
    execute "alter index IF EXISTS #{prefix()}.properties_properties_stock_id_index rename to properties__properties_stock_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_processors_property_id_type_index rename to properties__processors_property_id_type_index"
    execute "alter index IF EXISTS #{prefix()}.properties_packages_unit_id_index rename to properties__packages_unit_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_insurances_tenant_id_index rename to properties__insurances_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_floor_plans_property_id_name_index rename to properties__floor_plans_property_id_name_index"
    execute "alter index IF EXISTS #{prefix()}.properties_floor_plan_features_feature_id_floor_plan_id_index rename to properties__floor_plan_features_feature_id_floor_plan_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_evictions_lease_id_index rename to properties__evictions_lease_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_documents_tenant_id_index rename to properties__documents_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_charges_account_id_index rename to properties__charges_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.properties_charges_lease_id_index rename to properties__charges_lease_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_material_types_name_index rename to materials__material_types_name_index"
    execute "alter index IF EXISTS #{prefix()}.materials_toolbox_items_material_id_index rename to materials__toolbox_items_material_id_index"
    execute "alter index IF EXISTS #{prefix()}.materials_toolbox_items_stock_id_index rename to materials__toolbox_items_stock_id_index"
    execute "alter index IF EXISTS #{prefix()}.materials_toolbox_items_tech_id_index rename to materials__toolbox_items_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_stocks_name_index rename to materials__stocks_name_index"
    execute "alter index IF EXISTS #{prefix()}.materials_inventory_material_id_index rename to materials__inventory_material_id_index"
    execute "alter index IF EXISTS #{prefix()}.materials_inventory_stock_id_index rename to materials__inventory_stock_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_timecards_tech_id_index rename to maintenance__timecards_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_techs_identifier_index rename to maintenance__techs_identifier_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_techs_pass_code_index rename to maintenance__techs_pass_code_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_skills_tech_id_category_id_index rename to maintenance__skills_tech_id_category_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_recurring_orders_property_id_index rename to maintenance__recurring_orders_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_presence_logs_tech_id_index rename to maintenance__presence_logs_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_parts_order_id_index rename to maintenance__parts_order_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_paid_time_tech_id_index rename to maintenance__paid_time_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_offers_tech_id_order_id_index rename to maintenance__offers_tech_id_order_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_orders_card_item_id_index rename to maintenance__orders_card_item_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_orders_category_id_index rename to maintenance__orders_category_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_orders_property_id_index rename to maintenance__orders_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_orders_tenant_id_index rename to maintenance__orders_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_orders_unit_id_index rename to maintenance__orders_unit_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_orders_uuid_index rename to maintenance__orders_uuid_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_notes_admin_id_index rename to maintenance__notes_admin_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_notes_order_id_index rename to maintenance__notes_order_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_notes_tech_id_index rename to maintenance__notes_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_notes_tenant_id_index rename to maintenance__notes_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_jobs_property_id_tech_id_index rename to maintenance__jobs_property_id_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_inventory_logs_material_id_index rename to maintenance__inventory_logs_material_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_categories_name_path_index rename to maintenance__categories_name_path_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_cards_lease_id_index rename to maintenance__cards_lease_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_card_items_card_id_name_index rename to maintenance__card_items_card_id_name_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_card_items_tech_id_index rename to maintenance__card_items_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_assignments_admin_id_index rename to maintenance__assignments_admin_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_assignments_order_id_index rename to maintenance__assignments_order_id_index"
    execute "alter index IF EXISTS #{prefix()}.maintenance_assignments_tech_id_index rename to maintenance__assignments_tech_id_index"
    execute "alter index IF EXISTS #{prefix()}.admins_permissions_admin_id_entity_id_index rename to admins__permissions_admin_id_entity_id_index"
    execute "alter index IF EXISTS #{prefix()}.admins_permissions_admin_id_index rename to admins__permissions_admin_id_index"
    execute "alter index IF EXISTS #{prefix()}.admins_permissions_entity_id_index rename to admins__permissions_entity_id_index"
    execute "alter index IF EXISTS #{prefix()}.admins_messages_admin_id_index rename to admins__messages_admin_id_index"
    execute "alter index IF EXISTS #{prefix()}.admins_entities_name_index rename to admins__entities_name_index"
    execute "alter index IF EXISTS #{prefix()}.admins_devices_name_index rename to admins__devices_name_index"
    execute "alter index IF EXISTS #{prefix()}.admins_device_auths_device_id_property_id_index rename to admins__device_auths_device_id_property_id_index"
    execute "alter index IF EXISTS #{prefix()}.admins_admins_email_index rename to admins__admins_email_index"
    execute "alter index IF EXISTS #{prefix()}.admins_admins_username_index rename to admins__admins_username_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_payment_sources_account_id_index rename to accounts__payment_sources_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_logins_account_id_index rename to accounts__logins_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_locks_account_id_index rename to accounts__locks_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_locks_admin_id_index rename to accounts__locks_admin_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_accounts_uuid_index rename to accounts__accounts_uuid_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_requests_admin_id_charge_id_index rename to accounting__requests_admin_id_charge_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_requests_admin_id_payment_id_index rename to accounting__requests_admin_id_payment_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_receipts_charge_id_payment_id_index rename to accounting__receipts_charge_id_payment_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_payments_payment_source_id_index rename to accounting__payments_payment_source_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_payments_tenant_id_index rename to accounting__payments_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_invoicings_account_id_index rename to accounting__invoicings_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_invoices_number_payee_id_index rename to accounting__invoices_number_payee_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_invoices_payee_id_index rename to accounting__invoices_payee_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_invoice_payments_check_id_invoicing_id_index rename to accounting__invoice_payments_check_id_invoicing_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_entities_property_id_bank_account_id_index rename to accounting__entities_property_id_bank_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_checks_bank_account_id_index rename to accounting__checks_bank_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_checks_number_bank_account_id_index rename to accounting__checks_number_bank_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_checks_payee_id_index rename to accounting__checks_payee_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_charges_account_id_index rename to accounting__charges_account_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_charges_charge_id_index rename to accounting__charges_charge_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_charges_lease_id_index rename to accounting__charges_lease_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounting_accounts_name_index rename to accounting__accounts_name_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_purchases_tenant_id_index rename to rewards__purchases_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_rewards_account_id_index rename to rewards__awards_tenant_id_index"
    execute "alter index IF EXISTS #{prefix()}.accounts_rewards_type_id_index rename to rewards__awards_type_id_index"

    execute "drop index IF EXISTS #{prefix()}.accounts_banks_routing_index"
  end
end