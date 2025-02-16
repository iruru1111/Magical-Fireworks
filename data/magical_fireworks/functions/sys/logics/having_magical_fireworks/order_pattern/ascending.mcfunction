#> magical_fireworks:sys/logics/having_magical_fireworks/order_pattern/ascending
#
# 番号を昇順(1→9)でセットする
#
# @within function magical_fireworks:sys/logics/having_magical_fireworks/validate_data

# 列番号を調べる
    # 列番号がなければ設定
        execute unless data entity @s SelectedItem.tag.MagicalFireworks.ColumnNumber run item modify entity @s weapon.mainhand magical_fireworks:set_first_column_number
    # 仮スコアに保存
        execute store result score $Temp.ColumnNumber MagicalFireworks.Temporary run data get entity @s SelectedItem.tag.MagicalFireworks.ColumnNumber
    # パターンに応じた処理
        # 列番号が0~8でない時に0にリセット
            execute unless score $Temp.ColumnNumber MagicalFireworks.Temporary matches 0..8 run scoreboard players set $Temp.ColumnNumber MagicalFireworks.Temporary 0
        # 列番号が0~8である時に加算
            execute if score $Temp.ColumnNumber MagicalFireworks.Temporary matches 0..8 run scoreboard players add $Temp.ColumnNumber MagicalFireworks.Temporary 1
    # 列番号を記録し、仮スコアを初期化
        execute store result storage magical_fireworks:temp MagicalFireworks.ColumnNumber int 1 run scoreboard players get $Temp.ColumnNumber MagicalFireworks.Temporary
        item modify entity @s weapon.mainhand magical_fireworks:set_column_number
        scoreboard players reset $Temp.ColumnNumber MagicalFireworks.Temporary

# 列番号通りに花火データをセットする
    function magical_fireworks:sys/api/fireworks/set/controller