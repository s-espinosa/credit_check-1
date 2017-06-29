require "./creditcheck_fin"

v_cc_one = Checker.new("5541808923795240")
v_cc_two = Checker.new("4024007136512380")
v_cc_three = Checker.new("6011797668867828")
amex_valid = Checker.new("342804633855673")
cc_example = Checker.new("7992739871")

i_cc_one = Checker.new("5541801923795240")
i_cc_two = Checker.new("4024007106512380")
i_cc_three = Checker.new("6011797668868728")
amex_invalid = Checker.new("342801633855673")
