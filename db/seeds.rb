# Dir.glob("#{Rails.root}/db/seeds/*.yml").each do |yaml_filename|
#   # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
#   # 下記行が無いと、「ArgumentError: undefined class/module」が発生する
#   target_model = File.basename(yaml_filename,".yml").classify.constantize
#   # すでに登録されているデータを全件削除
#   target_model.delete_all

#   # yamlに記述されたレコードをDBに登録する
#   File.open(yaml_filename) do |load_target_yaml|
#     records = YAML.load(load_target_yaml)

#     records.each do |record|
#       target_model.create(record.attributes)
#     end
#   end
# end