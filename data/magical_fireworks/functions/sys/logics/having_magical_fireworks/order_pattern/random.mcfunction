#> magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/ascending
#
# 番号をランダム(1~9)でセットする
#
# @within function magical_fireworks:sys/logics/having_magical_fireworks/validate_data

# 列番号を調べる
    # 列番号がなければ設定
        execute unless data entity @s SelectedItem.tag.MagicalFireworks.ColumnNumber run item modify entity @s weapon.mainhand magical_fireworks:set_first_column_number
    # 仮スコアに保存
        execute store result score $Temp.ColumnNumber MagicalFireworks.Temporary run data get entity @s SelectedItem.tag.MagicalFireworks.ColumnNumber
    # 列番号を記録し、仮スコアを初期化
        execute store result storage magical_fireworks:temp MagicalFireworks.ColumnNumber int 1 run random value 1..9
        item modify entity @s weapon.mainhand magical_fireworks:set_column_number
        scoreboard players reset $Temp.ColumnNumber MagicalFireworks.Temporary

# 列番号通りに花火データをセットする
    function magical_fireworks:sys/api/fireworks/set/controller