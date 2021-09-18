class Team

    # インスタンスが持つ変数（値）
    attr_accessor :name,:win, :lose, :draw
  
    # インスタンスを初期化するための、特別なメソッド
    def initialize(name,win,lose,draw)
      self.name = name
      self.win = win
      self.lose = lose
      self.draw = draw
    end
    def calc_win_rate
      return self.win.to_f / (self.win.to_f + self.lose.to_f)
    end
  
    # インスタンスが持つメソッド（処理）
    def show_team_result
      puts "#{self.name}の2020年の成績は#{self.win.to_f}勝#{self.lose.to_f}敗#{self.draw.to_f}分、勝率は#{calc_win_rate}です"
    end
  end
  
  # インスタンスの生成と、変数への代入
  team_1 = Team.new("Giants",67,45,8)
  team_2 = Team.new("Tigers",60,53,7)
  team_3 = Team.new("Dragons",60,55,5)
  team_4 = Team.new("BayStars",56,58,6)
  team_5 = Team.new("Carp",52,56,12)
  team_6 = Team.new("Swallows",41,69,10)

  
  # インスタンスの使用
  team_1.show_team_result
  team_2.show_team_result
  team_3.show_team_result
  team_4.show_team_result
  team_5.show_team_result
  team_6.show_team_result