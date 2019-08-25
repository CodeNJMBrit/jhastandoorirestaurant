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

ActiveRecord::Schema.define(version: 2019_08_25_173252) do

  create_table "desserts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inchef_recommendations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inchicken_dishes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inindian_breads", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "injhas_special_biryani_dishes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inlamb_dishes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inrice_dishes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insea_foods", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instarters", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intandooris", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invegetable_dishes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
