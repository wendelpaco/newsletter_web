module SubscribeHelper
  def convert_true_for_yes(element)
    element == true ? "Sim" : "Não"
  end
end
