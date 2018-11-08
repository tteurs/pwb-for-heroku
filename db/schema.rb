# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181108123821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts_as_bookable_bookings", force: :cascade do |t|
    t.string "bookable_type"
    t.bigint "bookable_id"
    t.string "booker_type"
    t.bigint "booker_id"
    t.integer "amount"
    t.text "schedule"
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "time"
    t.datetime "created_at"
    t.index ["bookable_type", "bookable_id"], name: "index_acts_as_bookable_bookings_bookable"
    t.index ["booker_type", "booker_id"], name: "index_acts_as_bookable_bookings_booker"
  end

  create_table "page_photo_translations", force: :cascade do |t|
    t.integer "page_photo_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alt_text", default: ""
    t.index ["locale"], name: "index_page_photo_translations_on_locale"
    t.index ["page_photo_id"], name: "index_page_photo_translations_on_page_photo_id"
  end

  create_table "page_photos", force: :cascade do |t|
    t.integer "page_id"
    t.string "image"
    t.string "description"
    t.string "folder", default: "weebrix"
    t.integer "file_size"
    t.json "process_options", default: {}
    t.string "height"
    t.string "width"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content_type"
    t.index ["page_id"], name: "index_page_photos_on_page_id"
  end

  create_table "prop_rental_photo_translations", force: :cascade do |t|
    t.integer "prop_rental_photo_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alt_text", default: ""
    t.index ["locale"], name: "index_prop_rental_photo_translations_on_locale"
    t.index ["prop_rental_photo_id"], name: "index_prop_rental_photo_translations_on_prop_rental_photo_id"
  end

  create_table "prop_rental_photos", force: :cascade do |t|
    t.integer "prop_rental_id"
    t.string "image"
    t.string "description"
    t.string "folder", default: "weebrix"
    t.integer "file_size"
    t.json "process_options", default: {}
    t.string "height"
    t.string "width"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content_type"
    t.index ["prop_rental_id"], name: "index_prop_rental_photos_on_prop_rental_id"
  end

  create_table "prop_rental_translations", force: :cascade do |t|
    t.integer "prop_rental_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", default: ""
    t.text "description", default: ""
    t.string "slug", default: ""
    t.string "description_short", default: ""
    t.string "description_meta", default: ""
    t.string "title_meta", default: ""
    t.string "description_summary", default: ""
    t.string "title_summary", default: ""
    t.index ["locale"], name: "index_prop_rental_translations_on_locale"
    t.index ["prop_rental_id"], name: "index_prop_rental_translations_on_prop_rental_id"
  end

  create_table "prop_rentals", force: :cascade do |t|
    t.string "reference"
    t.integer "year_construction", default: 0, null: false
    t.integer "count_bedrooms", default: 0, null: false
    t.float "count_bathrooms", default: 0.0, null: false
    t.integer "count_toilets", default: 0, null: false
    t.integer "count_garages", default: 0, null: false
    t.float "plot_area", default: 0.0, null: false
    t.float "constructed_area", default: 0.0, null: false
    t.integer "energy_rating"
    t.float "energy_performance"
    t.integer "flags", default: 0, null: false
    t.boolean "furnished", default: false
    t.boolean "reserved", default: false
    t.boolean "highlighted", default: false
    t.boolean "archived", default: false
    t.boolean "visible", default: false
    t.boolean "for_rent_daily", default: false
    t.boolean "for_rent_monthly", default: false
    t.boolean "for_rent_long_term", default: false
    t.boolean "hide_map", default: false
    t.boolean "obscure_map", default: false
    t.datetime "deleted_at"
    t.datetime "active_from"
    t.datetime "available_to_rent_from"
    t.datetime "available_to_rent_till"
    t.integer "price_rental_monthly_low_season_cents", default: 0, null: false
    t.string "price_rental_monthly_low_season_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_high_season_cents", default: 0, null: false
    t.string "price_rental_monthly_high_season_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_standard_season_cents", default: 0, null: false
    t.string "price_rental_monthly_standard_season_currency", default: "EUR", null: false
    t.integer "price_rental_daily_low_season_cents", default: 0, null: false
    t.string "price_rental_daily_low_season_currency", default: "EUR", null: false
    t.integer "price_rental_daily_high_season_cents", default: 0, null: false
    t.string "price_rental_daily_high_season_currency", default: "EUR", null: false
    t.integer "price_rental_daily_standard_season_cents", default: 0, null: false
    t.string "price_rental_daily_standard_season_currency", default: "EUR", null: false
    t.integer "service_charge_yearly_cents", default: 0, null: false
    t.string "service_charge_yearly_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_for_search_cents", default: 0, null: false
    t.string "price_rental_monthly_for_search_currency", default: "EUR", null: false
    t.integer "price_rental_daily_for_search_cents", default: 0, null: false
    t.string "price_rental_daily_for_search_currency", default: "EUR", null: false
    t.string "currency"
    t.string "prop_state_key", default: "", null: false
    t.string "prop_type_key", default: "", null: false
    t.string "street_number"
    t.string "street_name"
    t.string "street_address"
    t.string "postal_code"
    t.string "province"
    t.string "city"
    t.string "region"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.integer "area_unit", default: 0
    t.integer "occupants", default: 1
    t.integer "units", default: 1
    t.string "main_video_url"
    t.json "details", default: {}
    t.string "neighborhood"
    t.string "import_url"
    t.json "related_urls", default: {}
    t.integer "capacity"
    t.text "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "locale_content", default: {}, null: false
    t.jsonb "categories", default: {}, null: false
    t.string "google_place_id"
    t.string "floor"
    t.string "city_search_key", default: "", null: false
    t.index ["archived"], name: "index_prop_rentals_on_archived"
    t.index ["area_unit"], name: "index_prop_rentals_on_area_unit"
    t.index ["categories"], name: "index_prop_rentals_on_categories", using: :gin
    t.index ["flags"], name: "index_prop_rentals_on_flags"
    t.index ["for_rent_daily"], name: "index_prop_rentals_on_for_rent_daily"
    t.index ["for_rent_long_term"], name: "index_prop_rentals_on_for_rent_long_term"
    t.index ["for_rent_monthly"], name: "index_prop_rentals_on_for_rent_monthly"
    t.index ["highlighted"], name: "index_prop_rentals_on_highlighted"
    t.index ["latitude", "longitude"], name: "index_prop_rentals_on_latitude_and_longitude"
    t.index ["locale_content"], name: "index_prop_rentals_on_locale_content", using: :gin
    t.index ["occupants"], name: "index_prop_rentals_on_occupants"
    t.index ["price_rental_daily_for_search_cents"], name: "index_prop_rentals_on_price_rental_daily_for_search_cents"
    t.index ["price_rental_monthly_for_search_cents"], name: "index_prop_rentals_on_price_rental_monthly_for_search_cents"
    t.index ["reference"], name: "index_prop_rentals_on_reference"
    t.index ["units"], name: "index_prop_rentals_on_units"
    t.index ["visible"], name: "index_prop_rentals_on_visible"
  end

  create_table "property_web_scraper_import_hosts", id: :serial, force: :cascade do |t|
    t.integer "flags", default: 0, null: false
    t.string "scraper_name"
    t.string "host"
    t.boolean "is_https"
    t.json "details", default: {}
    t.string "slug"
    t.text "example_urls", default: [], array: true
    t.text "invalid_urls", default: [], array: true
    t.datetime "last_retrieval_at"
    t.string "valid_url_regex"
    t.string "pause_between_calls", default: "5.seconds"
    t.string "stale_age", default: "1.day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host"], name: "index_property_web_scraper_import_hosts_on_host", unique: true
  end

  create_table "property_web_scraper_listings", id: :serial, force: :cascade do |t|
    t.integer "flags", default: 0, null: false
    t.integer "area_unit", default: 0, null: false
    t.string "reference"
    t.integer "year_construction", default: 0
    t.integer "count_bedrooms", default: 0
    t.float "count_bathrooms", default: 0.0
    t.integer "count_toilets", default: 0
    t.integer "count_garages", default: 0
    t.float "plot_area", default: 0.0
    t.float "constructed_area", default: 0.0
    t.integer "energy_rating"
    t.float "energy_performance"
    t.string "title"
    t.text "description"
    t.string "locale_code"
    t.string "title_es"
    t.text "description_es"
    t.string "title_de"
    t.text "description_de"
    t.string "title_fr"
    t.text "description_fr"
    t.string "title_it"
    t.text "description_it"
    t.boolean "furnished", default: false
    t.boolean "sold", default: false
    t.boolean "reserved", default: false
    t.boolean "for_rent_short_term", default: false
    t.boolean "for_rent_long_term", default: false
    t.boolean "for_sale", default: false
    t.boolean "for_rent", default: false
    t.datetime "deleted_at"
    t.datetime "active_from"
    t.datetime "available_to_rent_from"
    t.datetime "available_to_rent_till"
    t.string "price_string"
    t.float "price_float"
    t.integer "price_sale_cents", default: 0, null: false
    t.string "price_sale_currency", default: "EUR", null: false
    t.integer "price_sale_current_cents", default: 0, null: false
    t.string "price_sale_current_currency", default: "EUR", null: false
    t.integer "price_sale_original_cents", default: 0, null: false
    t.string "price_sale_original_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_current_cents", default: 0, null: false
    t.string "price_rental_monthly_current_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_original_cents", default: 0, null: false
    t.string "price_rental_monthly_original_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_low_season_cents", default: 0, null: false
    t.string "price_rental_monthly_low_season_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_high_season_cents", default: 0, null: false
    t.string "price_rental_monthly_high_season_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_standard_season_cents", default: 0, null: false
    t.string "price_rental_monthly_standard_season_currency", default: "EUR", null: false
    t.integer "commission_cents", default: 0, null: false
    t.string "commission_currency", default: "EUR", null: false
    t.integer "service_charge_yearly_cents", default: 0, null: false
    t.string "service_charge_yearly_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_for_search_cents", default: 0, null: false
    t.string "price_rental_monthly_for_search_currency", default: "EUR", null: false
    t.string "currency"
    t.string "address_string"
    t.string "street_number"
    t.string "street_name"
    t.string "street_address"
    t.string "postal_code"
    t.string "province"
    t.string "city"
    t.string "region"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.datetime "last_retrieved_at"
    t.string "import_host_slug"
    t.integer "re_agent_id"
    t.string "import_url"
    t.json "import_history", default: {}
    t.string "main_image_url"
    t.text "image_urls", default: [], array: true
    t.text "related_urls", default: [], array: true
    t.text "features", default: [], array: true
    t.text "unknown_fields", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flags"], name: "index_property_web_scraper_listings_on_flags"
    t.index ["import_url"], name: "index_property_web_scraper_listings_on_import_url"
    t.index ["price_float"], name: "index_property_web_scraper_listings_on_price_float"
    t.index ["reference"], name: "index_property_web_scraper_listings_on_reference"
  end

  create_table "pwb_addresses", id: :serial, force: :cascade do |t|
    t.float "longitude"
    t.float "latitude"
    t.string "street_number"
    t.string "street_address"
    t.string "postal_code"
    t.string "city"
    t.string "region"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pwb_agencies", id: :serial, force: :cascade do |t|
    t.string "phone_number_primary"
    t.string "phone_number_mobile"
    t.string "phone_number_other"
    t.string "analytics_id"
    t.integer "analytics_id_type"
    t.string "company_name"
    t.string "display_name"
    t.string "email_primary"
    t.string "email_for_general_contact_form"
    t.string "email_for_property_contact_form"
    t.string "skype"
    t.string "company_id"
    t.integer "company_id_type"
    t.string "url"
    t.integer "primary_address_id"
    t.integer "secondary_address_id"
    t.integer "flags", default: 0, null: false
    t.integer "payment_plan_id"
    t.integer "site_template_id"
    t.json "site_configuration", default: {}
    t.text "available_locales", default: [], array: true
    t.text "supported_locales", default: [], array: true
    t.text "available_currencies", default: [], array: true
    t.text "supported_currencies", default: [], array: true
    t.string "default_client_locale"
    t.string "default_admin_locale"
    t.string "default_currency"
    t.json "social_media", default: {}
    t.json "details", default: {}
    t.text "raw_css"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "theme_name"
    t.index ["company_id"], name: "index_pwb_agencies_on_company_id", unique: true
    t.index ["company_name"], name: "index_pwb_agencies_on_company_name"
  end

  create_table "pwb_authorizations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pwb_authorizations_on_user_id"
  end

  create_table "pwb_clients", id: :serial, force: :cascade do |t|
    t.string "first_names"
    t.string "last_names"
    t.string "client_title"
    t.string "phone_number_primary"
    t.string "phone_number_other"
    t.string "fax"
    t.string "nationality"
    t.string "email"
    t.string "skype"
    t.string "documentation_id"
    t.integer "documentation_type"
    t.integer "user_id"
    t.integer "address_id"
    t.integer "flags", default: 0, null: false
    t.json "details", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documentation_id"], name: "index_pwb_clients_on_documentation_id", unique: true
    t.index ["email"], name: "index_pwb_clients_on_email", unique: true
    t.index ["first_names", "last_names"], name: "index_pwb_clients_on_first_names_and_last_names"
  end

  create_table "pwb_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "other_names"
    t.integer "title", default: 0
    t.string "primary_phone_number"
    t.string "other_phone_number"
    t.string "fax"
    t.string "nationality"
    t.string "primary_email"
    t.string "other_email"
    t.string "skype_id"
    t.string "facebook_id"
    t.string "linkedin_id"
    t.string "twitter_id"
    t.string "website"
    t.string "documentation_id"
    t.integer "documentation_type"
    t.integer "user_id"
    t.integer "primary_address_id"
    t.integer "secondary_address_id"
    t.integer "flags", default: 0, null: false
    t.json "details", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documentation_id"], name: "index_pwb_contacts_on_documentation_id"
    t.index ["first_name", "last_name"], name: "index_pwb_contacts_on_first_name_and_last_name"
    t.index ["first_name"], name: "index_pwb_contacts_on_first_name"
    t.index ["last_name"], name: "index_pwb_contacts_on_last_name"
    t.index ["primary_email"], name: "index_pwb_contacts_on_primary_email"
    t.index ["primary_phone_number"], name: "index_pwb_contacts_on_primary_phone_number"
    t.index ["title"], name: "index_pwb_contacts_on_title"
  end

  create_table "pwb_content_photo_translations", force: :cascade do |t|
    t.integer "pwb_content_photo_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alt_text", default: ""
    t.index ["locale"], name: "index_pwb_content_photo_translations_on_locale"
    t.index ["pwb_content_photo_id"], name: "index_pwb_content_photo_translations_on_pwb_content_photo_id"
  end

  create_table "pwb_content_photos", id: :serial, force: :cascade do |t|
    t.integer "content_id"
    t.string "image"
    t.string "description"
    t.string "folder"
    t.integer "file_size"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "block_key"
    t.string "height"
    t.string "width"
    t.string "content_type"
    t.index ["content_id"], name: "index_pwb_content_photos_on_content_id"
  end

  create_table "pwb_content_translations", force: :cascade do |t|
    t.integer "pwb_content_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "raw"
    t.index ["locale"], name: "index_pwb_content_translations_on_locale"
    t.index ["pwb_content_id"], name: "index_pwb_content_translations_on_pwb_content_id"
  end

  create_table "pwb_contents", id: :serial, force: :cascade do |t|
    t.string "key"
    t.string "tag"
    t.string "input_type"
    t.string "status"
    t.integer "last_updated_by_user_id"
    t.integer "sort_order"
    t.string "target_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "section_key"
    t.string "page_part_key"
    t.index ["key"], name: "index_pwb_contents_on_key", unique: true
  end

  create_table "pwb_features", id: :serial, force: :cascade do |t|
    t.string "feature_key"
    t.integer "prop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_key"], name: "index_pwb_features_on_feature_key"
  end

  create_table "pwb_field_keys", id: :serial, force: :cascade do |t|
    t.string "global_key"
    t.string "tag"
    t.boolean "visible", default: true
    t.integer "props_count", default: 0, null: false
    t.boolean "show_in_search_form", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["global_key"], name: "index_pwb_field_keys_on_global_key", unique: true
  end

  create_table "pwb_link_translations", force: :cascade do |t|
    t.integer "pwb_link_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link_title", default: ""
    t.index ["locale"], name: "index_pwb_link_translations_on_locale"
    t.index ["pwb_link_id"], name: "index_pwb_link_translations_on_pwb_link_id"
  end

  create_table "pwb_links", id: :serial, force: :cascade do |t|
    t.string "slug"
    t.string "parent_slug"
    t.string "page_slug"
    t.string "icon_class"
    t.string "href_class"
    t.string "href_target"
    t.boolean "is_external", default: false
    t.string "link_url"
    t.string "link_path"
    t.string "link_path_params"
    t.boolean "visible", default: true
    t.boolean "is_deletable", default: false
    t.integer "flags", default: 0, null: false
    t.integer "sort_order", default: 0
    t.integer "placement", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "locale_content", default: {}, null: false
    t.index ["flags"], name: "index_pwb_links_on_flags"
    t.index ["page_slug"], name: "index_pwb_links_on_page_slug"
    t.index ["placement"], name: "index_pwb_links_on_placement"
    t.index ["slug"], name: "index_pwb_links_on_slug", unique: true
  end

  create_table "pwb_messages", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "client_id"
    t.string "origin_ip"
    t.string "user_agent"
    t.float "longitude"
    t.float "latitude"
    t.string "locale"
    t.string "host"
    t.string "url"
    t.boolean "delivery_success", default: false
    t.string "delivery_email"
    t.string "origin_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contact_id"
  end

  create_table "pwb_page_contents", force: :cascade do |t|
    t.boolean "is_rails_part", default: false
    t.string "page_part_key"
    t.string "label"
    t.integer "sort_order"
    t.boolean "visible_on_page", default: true
    t.bigint "page_id"
    t.bigint "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "website_id"
    t.index ["content_id"], name: "index_pwb_page_contents_on_content_id"
    t.index ["page_id"], name: "index_pwb_page_contents_on_page_id"
    t.index ["website_id"], name: "index_pwb_page_contents_on_website_id"
  end

  create_table "pwb_page_parts", force: :cascade do |t|
    t.boolean "is_rails_part", default: false
    t.boolean "show_in_editor", default: true
    t.integer "order_in_editor"
    t.string "page_part_key"
    t.string "page_slug"
    t.text "template"
    t.json "editor_setup", default: {}
    t.json "block_contents", default: {}
    t.string "theme_name"
    t.string "locale"
    t.integer "flags", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_part_key", "page_slug"], name: "index_pwb_page_parts_on_page_part_key_and_page_slug"
    t.index ["page_part_key"], name: "index_pwb_page_parts_on_page_part_key"
    t.index ["page_slug"], name: "index_pwb_page_parts_on_page_slug"
  end

  create_table "pwb_page_translations", force: :cascade do |t|
    t.integer "pwb_page_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "raw_html", default: ""
    t.string "page_title", default: ""
    t.string "link_title", default: ""
    t.text "description", default: ""
    t.string "description_meta", default: ""
    t.string "title_meta", default: ""
    t.string "description_summary", default: ""
    t.string "title_summary", default: ""
    t.index ["locale"], name: "index_pwb_page_translations_on_locale"
    t.index ["pwb_page_id"], name: "index_pwb_page_translations_on_pwb_page_id"
  end

  create_table "pwb_pages", id: :serial, force: :cascade do |t|
    t.string "slug"
    t.string "setup_id"
    t.boolean "visible", default: false
    t.integer "last_updated_by_user_id"
    t.integer "flags", default: 0, null: false
    t.json "details", default: {}
    t.integer "sort_order_top_nav", default: 0
    t.integer "sort_order_footer", default: 0
    t.boolean "show_in_top_nav", default: false
    t.boolean "show_in_footer", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "locale_content", default: {}, null: false
    t.jsonb "categories", default: {}, null: false
    t.string "city_search_key", default: "", null: false
    t.string "import_url"
    t.json "related_urls", default: {}
    t.index ["categories"], name: "index_pwb_pages_on_categories", using: :gin
    t.index ["flags"], name: "index_pwb_pages_on_flags"
    t.index ["locale_content"], name: "index_pwb_pages_on_locale_content", using: :gin
    t.index ["show_in_footer"], name: "index_pwb_pages_on_show_in_footer"
    t.index ["show_in_top_nav"], name: "index_pwb_pages_on_show_in_top_nav"
    t.index ["slug"], name: "index_pwb_pages_on_slug", unique: true
  end

  create_table "pwb_prop_photo_translations", force: :cascade do |t|
    t.integer "pwb_prop_photo_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alt_text", default: ""
    t.index ["locale"], name: "index_pwb_prop_photo_translations_on_locale"
    t.index ["pwb_prop_photo_id"], name: "index_pwb_prop_photo_translations_on_pwb_prop_photo_id"
  end

  create_table "pwb_prop_photos", id: :serial, force: :cascade do |t|
    t.integer "prop_id"
    t.string "image"
    t.string "description"
    t.string "folder"
    t.integer "file_size"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "height"
    t.string "width"
    t.string "content_type"
    t.index ["prop_id"], name: "index_pwb_prop_photos_on_prop_id"
  end

  create_table "pwb_prop_translations", force: :cascade do |t|
    t.integer "pwb_prop_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", default: ""
    t.text "description", default: ""
    t.index ["locale"], name: "index_pwb_prop_translations_on_locale"
    t.index ["pwb_prop_id"], name: "index_pwb_prop_translations_on_pwb_prop_id"
  end

  create_table "pwb_props", id: :serial, force: :cascade do |t|
    t.string "reference"
    t.integer "year_construction", default: 0, null: false
    t.integer "count_bedrooms", default: 0, null: false
    t.float "count_bathrooms", default: 0.0, null: false
    t.integer "count_toilets", default: 0, null: false
    t.integer "count_garages", default: 0, null: false
    t.float "plot_area", default: 0.0, null: false
    t.float "constructed_area", default: 0.0, null: false
    t.integer "energy_rating"
    t.float "energy_performance"
    t.integer "flags", default: 0, null: false
    t.boolean "furnished", default: false
    t.boolean "sold", default: false
    t.boolean "reserved", default: false
    t.boolean "highlighted", default: false
    t.boolean "archived", default: false
    t.boolean "visible", default: false
    t.boolean "for_rent_short_term", default: false
    t.boolean "for_rent_long_term", default: false
    t.boolean "for_sale", default: false
    t.boolean "hide_map", default: false
    t.boolean "obscure_map", default: false
    t.boolean "portals_enabled", default: false
    t.datetime "deleted_at"
    t.datetime "active_from"
    t.datetime "available_to_rent_from"
    t.datetime "available_to_rent_till"
    t.bigint "price_sale_current_cents", default: 0, null: false
    t.string "price_sale_current_currency", default: "EUR", null: false
    t.bigint "price_sale_original_cents", default: 0, null: false
    t.string "price_sale_original_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_current_cents", default: 0, null: false
    t.string "price_rental_monthly_current_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_original_cents", default: 0, null: false
    t.string "price_rental_monthly_original_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_low_season_cents", default: 0, null: false
    t.string "price_rental_monthly_low_season_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_high_season_cents", default: 0, null: false
    t.string "price_rental_monthly_high_season_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_standard_season_cents", default: 0, null: false
    t.string "price_rental_monthly_standard_season_currency", default: "EUR", null: false
    t.integer "commission_cents", default: 0, null: false
    t.string "commission_currency", default: "EUR", null: false
    t.integer "service_charge_yearly_cents", default: 0, null: false
    t.string "service_charge_yearly_currency", default: "EUR", null: false
    t.integer "price_rental_monthly_for_search_cents", default: 0, null: false
    t.string "price_rental_monthly_for_search_currency", default: "EUR", null: false
    t.string "currency"
    t.string "prop_origin_key", default: "", null: false
    t.string "prop_state_key", default: "", null: false
    t.string "prop_type_key", default: "", null: false
    t.string "street_number"
    t.string "street_name"
    t.string "street_address"
    t.string "postal_code"
    t.string "province"
    t.string "city"
    t.string "region"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_unit", default: 0
    t.string "neighborhood"
    t.string "import_url"
    t.json "related_urls", default: {}
    t.string "slug"
    t.index ["archived"], name: "index_pwb_props_on_archived"
    t.index ["flags"], name: "index_pwb_props_on_flags"
    t.index ["for_rent_long_term"], name: "index_pwb_props_on_for_rent_long_term"
    t.index ["for_rent_short_term"], name: "index_pwb_props_on_for_rent_short_term"
    t.index ["for_sale"], name: "index_pwb_props_on_for_sale"
    t.index ["highlighted"], name: "index_pwb_props_on_highlighted"
    t.index ["latitude", "longitude"], name: "index_pwb_props_on_latitude_and_longitude"
    t.index ["price_rental_monthly_current_cents"], name: "index_pwb_props_on_price_rental_monthly_current_cents"
    t.index ["price_sale_current_cents"], name: "index_pwb_props_on_price_sale_current_cents"
    t.index ["reference"], name: "index_pwb_props_on_reference"
    t.index ["visible"], name: "index_pwb_props_on_visible"
  end

  create_table "pwb_sections", id: :serial, force: :cascade do |t|
    t.string "link_key"
    t.string "link_path"
    t.integer "sort_order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "flags", default: 0, null: false
    t.json "details", default: {}
    t.boolean "is_page", default: false
    t.boolean "show_in_top_nav", default: false
    t.boolean "show_in_footer", default: false
    t.string "key"
    t.index ["link_key"], name: "index_pwb_sections_on_link_key", unique: true
  end

  create_table "pwb_subscriber_props", force: :cascade do |t|
    t.integer "prop_id"
    t.integer "subscriber_id"
    t.integer "flags", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flags"], name: "index_pwb_subscriber_props_on_flags"
    t.index ["prop_id"], name: "index_pwb_subscriber_props_on_prop_id"
    t.index ["subscriber_id"], name: "index_pwb_subscriber_props_on_subscriber_id"
  end

  create_table "pwb_subscribers", force: :cascade do |t|
    t.integer "contact_id"
    t.string "subscriber_token"
    t.string "subscriber_url"
    t.json "subscriber_details", default: {}
    t.integer "flags", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_pwb_subscribers_on_contact_id"
    t.index ["flags"], name: "index_pwb_subscribers_on_flags"
  end

  create_table "pwb_subscription_props", force: :cascade do |t|
    t.integer "prop_id"
    t.integer "subscription_id"
    t.integer "flags", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flags"], name: "index_pwb_subscription_props_on_flags"
    t.index ["prop_id"], name: "index_pwb_subscription_props_on_prop_id"
    t.index ["subscription_id"], name: "index_pwb_subscription_props_on_subscription_id"
  end

  create_table "pwb_subscriptions", force: :cascade do |t|
    t.integer "contact_id"
    t.string "subscription_token"
    t.string "subscription_url"
    t.json "subscription_details", default: {}
    t.integer "flags", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_pwb_subscriptions_on_contact_id"
    t.index ["flags"], name: "index_pwb_subscriptions_on_flags"
  end

  create_table "pwb_users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "authentication_token"
    t.boolean "admin", default: false
    t.string "first_names"
    t.string "last_names"
    t.string "skype"
    t.string "phone_number_primary"
    t.string "default_client_locale"
    t.string "default_admin_locale"
    t.string "default_currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_pwb_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_pwb_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pwb_users_on_reset_password_token", unique: true
  end

  create_table "pwb_website_photos", force: :cascade do |t|
    t.string "photo_key"
    t.string "image"
    t.string "description"
    t.string "folder", default: "weebrix"
    t.integer "file_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_key"], name: "index_pwb_website_photos_on_photo_key"
  end

  create_table "pwb_websites", id: :serial, force: :cascade do |t|
    t.string "analytics_id"
    t.integer "analytics_id_type"
    t.string "company_display_name"
    t.string "email_for_general_contact_form"
    t.string "email_for_property_contact_form"
    t.integer "contact_address_id"
    t.integer "flags", default: 0, null: false
    t.string "theme_name"
    t.string "google_font_name"
    t.json "configuration", default: {}
    t.json "style_variables_for_theme", default: {}
    t.text "sale_price_options_from", default: ["", "25,000", "50,000", "75,000", "100,000", "150,000", "250,000", "500,000", "1,000,000", "2,000,000", "5,000,000", "10,000,000"], array: true
    t.text "sale_price_options_till", default: ["", "25,000", "50,000", "75,000", "100,000", "150,000", "250,000", "500,000", "1,000,000", "2,000,000", "5,000,000", "10,000,000"], array: true
    t.text "rent_price_options_from", default: ["", "250", "500", "750", "1,000", "1,500", "2,500", "5,000"], array: true
    t.text "rent_price_options_till", default: ["", "250", "500", "750", "1,000", "1,500", "2,500", "5,000"], array: true
    t.text "supported_locales", default: ["en-UK"], array: true
    t.text "supported_currencies", default: [], array: true
    t.string "default_client_locale", default: "en-UK"
    t.string "default_admin_locale", default: "en-UK"
    t.string "default_currency", default: "EUR"
    t.integer "default_area_unit", default: 0
    t.json "social_media", default: {}
    t.text "raw_css"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "search_config_rent", default: {}
    t.json "search_config_buy", default: {}
    t.json "search_config_landing", default: {}
    t.json "admin_config", default: {}
    t.json "styles_config", default: {}
    t.json "imports_config", default: {}
    t.json "whitelabel_config", default: {}
    t.json "exchange_rates", default: {}
    t.string "favicon_url"
    t.string "main_logo_url"
    t.string "maps_api_key"
    t.string "recaptcha_key"
    t.json "meta_tags_config", default: {}
    t.integer "website_tenant_id"
    t.string "chat_api_key"
    t.string "g_search_key"
    t.boolean "is_vac_rental_only", default: false
  end

  create_table "redirector_cases", force: :cascade do |t|
    t.string "source", null: false
    t.boolean "source_is_path", default: true, null: false
    t.boolean "source_is_regex", default: false, null: false
    t.boolean "source_is_case_sensitive", default: false, null: false
    t.string "destination", null: false
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_link_translations", force: :cascade do |t|
    t.integer "sub_link_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link_title", default: ""
    t.text "link_description", default: ""
    t.index ["locale"], name: "index_sub_link_translations_on_locale"
    t.index ["sub_link_id"], name: "index_sub_link_translations_on_sub_link_id"
  end

  create_table "sub_links", force: :cascade do |t|
    t.integer "page_id"
    t.string "icon_class"
    t.string "href_class"
    t.string "href_target"
    t.boolean "visible", default: true
    t.boolean "is_deletable", default: false
    t.integer "flags", default: 0, null: false
    t.integer "sort_order", default: 0
    t.string "parent_slug"
    t.string "top_link_slug"
    t.string "link_page_slug_en"
    t.string "link_page_slug_es"
    t.string "link_page_slug_de"
    t.string "link_page_slug_ca"
    t.string "link_page_slug_ar"
    t.string "link_page_slug_fr"
    t.string "link_page_slug_ro"
    t.string "link_page_slug_bg"
    t.string "link_page_slug_it"
    t.string "link_page_slug_nl"
    t.string "link_page_slug_pl"
    t.string "link_page_slug_pt"
    t.string "link_page_slug_ru"
    t.string "link_page_slug_tr"
    t.string "link_page_slug_vi"
    t.string "link_page_slug_ko"
    t.string "slug"
    t.boolean "is_external", default: false
    t.string "link_url"
    t.string "link_route"
    t.string "link_route_params"
    t.integer "prop_query_definition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "locale_content", default: {}, null: false
    t.index ["flags"], name: "index_sub_links_on_flags"
    t.index ["link_page_slug_ar"], name: "index_sub_links_on_link_page_slug_ar"
    t.index ["link_page_slug_bg"], name: "index_sub_links_on_link_page_slug_bg"
    t.index ["link_page_slug_ca"], name: "index_sub_links_on_link_page_slug_ca"
    t.index ["link_page_slug_de"], name: "index_sub_links_on_link_page_slug_de"
    t.index ["link_page_slug_en"], name: "index_sub_links_on_link_page_slug_en"
    t.index ["link_page_slug_es"], name: "index_sub_links_on_link_page_slug_es"
    t.index ["link_page_slug_fr"], name: "index_sub_links_on_link_page_slug_fr"
    t.index ["link_page_slug_it"], name: "index_sub_links_on_link_page_slug_it"
    t.index ["link_page_slug_ko"], name: "index_sub_links_on_link_page_slug_ko"
    t.index ["link_page_slug_nl"], name: "index_sub_links_on_link_page_slug_nl"
    t.index ["link_page_slug_pl"], name: "index_sub_links_on_link_page_slug_pl"
    t.index ["link_page_slug_pt"], name: "index_sub_links_on_link_page_slug_pt"
    t.index ["link_page_slug_ro"], name: "index_sub_links_on_link_page_slug_ro"
    t.index ["link_page_slug_ru"], name: "index_sub_links_on_link_page_slug_ru"
    t.index ["link_page_slug_tr"], name: "index_sub_links_on_link_page_slug_tr"
    t.index ["link_page_slug_vi"], name: "index_sub_links_on_link_page_slug_vi"
    t.index ["page_id"], name: "index_sub_links_on_page_id"
    t.index ["prop_query_definition_id"], name: "index_sub_links_on_prop_query_definition_id"
    t.index ["slug"], name: "index_sub_links_on_slug"
  end

  create_table "translations", id: :serial, force: :cascade do |t|
    t.string "locale"
    t.string "key"
    t.text "value"
    t.text "interpolations"
    t.boolean "is_proc", default: false
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
