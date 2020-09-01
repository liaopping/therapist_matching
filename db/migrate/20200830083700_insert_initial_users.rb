class InsertInitialUsers < ActiveRecord::Migration[5.2]
  def change
    ichiro = {"name" => "一郎",
              "email" => "ichiro@example.com",
              "sex" => 0,
              "age" => 10,
              "pref" => 1,
              "user_type" => 2,
              "password" => "password"
            }
    futako = {"name" => "二子",
              "email" => "futako@example.com",
              "sex" => 1,
              "age" => 20,
              "pref" => 1,
              "user_type" => 0,
              "password" => "password"
            }
    saburo = {"name" => "三郎",
              "email" => "saburo@example.com",
              "sex" => 0,
              "age" => 30,
              "pref" => 1,
              "user_type" => 1,
              "password" => "password"
            }
    yonko = {"name" => "四子",
             "email" => "yonko@example.com",
             "sex" => 1,
             "age" => 40,
             "pref" => 2,
             "user_type" => 0,
             "password" => "password"
            }
    goro = {"name" => "五郎",
            "email" => "goro@example.com",
            "sex" => 0,
            "age" => 50,
            "pref" => 2,
            "user_type" => 1,
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
