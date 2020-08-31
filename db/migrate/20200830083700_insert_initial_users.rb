class InsertInitialUsers < ActiveRecord::Migration[5.2]
  def change
    ichiro = {"name" => "一郎",
              "email" => "ichiro@example.com",
              "sex" => "male",
              "age" => 10,
              "pref" => "北海道",
              "user_type" => "admin",
              "password" => "password"
            }
    futako = {"name" => "二子",
              "email" => "futako@example.com",
              "sex" => "female",
              "age" => 20,
              "pref" => "北海道",
              "user_type" => "general",
              "password" => "password"
            }
    saburo = {"name" => "三郎",
              "email" => "saburo@example.com",
              "sex" => "male",
              "age" => 30,
              "pref" => "北海道",
              "user_type" => "therapist",
              "password" => "password"
            }
    yonko = {"name" => "四子",
             "email" => "yonko@example.com",
             "sex" => "female",
             "age" => 40,
             "pref" => "青森県",
             "user_type" => "general",
             "password" => "password"
            }
    goro = {"name" => "五郎",
            "email" => "goro@example.com",
            "sex" => "male",
            "age" => 50,
            "pref" => "青森県",
            "user_type" => "therapist",
            "password" => "password"
            }
    users = [ichiro, futako, saburo, yonko, goro]
    users.each do |user|
      User.create(
        name: user["name"],
        email: user["email"],
        sex: user["sex"],
        age: user["age"],
        pref: user["pref"],
        user_type: user["user_type"],
        password: user["password"]
      )
    end
  end
end
