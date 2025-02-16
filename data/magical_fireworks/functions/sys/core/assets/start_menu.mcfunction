#> magical_fireworks:sys/core/assets/start_menu
#
# スタートメニューを表示する  
# 
# @within function magical_fireworks:sys/core/load

#スタートメニュー
    tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @s [{"text": "\"Magical Fireworks\"", "color": "green"},{"storage":"magical_fireworks:global","nbt":"Version","color": "gold"},{"text": "がロードされました。","color": "green"}]
    tellraw @s {"text": ""}
    tellraw @s [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}