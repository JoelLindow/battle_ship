require 'pry'

data = [
        [" X ", " . ", " . ", " . "],
        [" X ", " . ", " . ", " . "],
        [" X ", " . ", " . ", " . "],
        [" X ", " . ", " . ", " . "]
        ]

data_positions = [
                  [data[0][0], data[0][1], data[0][2], data[0][3],
                  [data[1][0], data[1][1], data[1][2], data[1][3],
                  [data[2][0], data[2][1], data[2][2], data[2][3],
                  [data[3][0], data[3][1], data[3][2], data[3][3],
                ]


data_positions_rotate = [
                  [data[3][0], data[2][0], data[1][0], data[0][0]],
                  [data[3][1], data[2][1], data[1][1], data[0][1]],
                  [data[3][2], data[2][2], data[1][2], data[0][2]],
                  [data[3][3], data[2][3], data[1][3], data[0][3]],
                ]

def auto_generate_ships
  data[rand(0..3)][rand(0..3)] = " X "
end

# auto_generate_ships
#
# print data_rotate[0]
# puts
# print data_rotate[1]
# puts
# print data_rotate[2]
# puts
# print data_rotate[3]

# binding.pry
""
