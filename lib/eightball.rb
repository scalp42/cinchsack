class Eightball

  def execute(m)
    
    if m.params.last =~ /\?$/
      advice = the_universe_means_nothing
    else
      advice = "Ask me a question, doofus."
    end
    
    m.reply(advice) if m.respond_to?('reply')
  end
  
  def the_universe_means_nothing
    answers.sample
  end
  
  def answers
    @@answers ||= [
      "It is certain",
      "It is decidedly so",
      "Without a doubt",
      "Yes definitely",
      "You may rely on it",
      "As I see it yes",
      "Most likely",
      "Outlook good",
      "Yes",
      "Signs point to yes",
      "Reply hazy try again",
      "Ask again later",
      "Better not tell you now",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don't count on it",
      "My reply is no",
      "My sources say no",
      "Outlook not so good",
      "Very doubtful"
    ]
  end
  
  def self.description
    "Not sure if you should do something? Ask the Magic Eightball."
  end
  
end