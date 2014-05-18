require_relative "lib/parser/full_parser"

test_str = <<-END
  def a
    # test begin
    1 + # test1
      1 # test2
    # test end
  end
END

puts Parser::FullParser.parse(test_str).ast[0][2].inspect
