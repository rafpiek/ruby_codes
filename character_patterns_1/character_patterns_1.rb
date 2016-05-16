# Using two characters: '.' and '*' print a chessboard-like pattern.
# The first character printed should be *.
  # INPUT
    # You are given t < 100 - the number of test cases
    # For each of the test cases two positive integers:
      # - l - the number of lines
      # - c - the number of columns (l,c < 100)
# Use one line break in between successive patterns.
class CharacterPatterns1

  def self.run
    tests_count = nil
    while tests_count == 0 || tests_count == nil
      puts "Incorrect input." if tests_count == 0
      puts "Type how many times you want to test."
      tests_count = gets.chomp.to_i
    end


    rows = nil
    columns = nil
    chessboard_like_board = ""
    rows_columns = nil

    tests_count.times do
        puts "Please type number of rows and columns. Eg. \"3 2\""
        rows_columns = gets.chomp.split(" ")
        rows = rows_columns[0].to_i
        columns = rows_columns[1].to_i

      chessboard_like_board << create_board(rows,columns)
      chessboard_like_board << "\n"
    end

    puts chessboard_like_board
    # run
  end

  private
  def self.create_board(rows,columns)
    star = "*"
    dot = "."
    counter = 1
    board = ""

    rows.times do
      columns.times do
        board << star if counter.odd?
        board << dot if counter.even?
        counter += 1
      end
      board << "\n"
      counter += columns.even? ? 1 : 2
    end

    return board
    # create_board
  end

  private_class_method :create_board
  # class CharacterPatterns1
end

CharacterPatterns1.run
