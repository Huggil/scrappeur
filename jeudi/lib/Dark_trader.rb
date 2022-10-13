equire 'rubygems'
require 'open-uri'
require 'nokogiri'


pageweb = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
#pageweb et la valeur créé et qui englobe ce que Nogokiri vient chercher


hash = {}
#Un hash est un tableau qui peut regrouper dans ces index [0, 1, 2....] 2 données minumums mais pas un tableau complet.
#je veux incrémenter dans mon hash pour chaque index + 1, faire que les données de mes tableaux name et price ce mettent.

for x in 1..20
    hash [pageweb.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[3]/div").text] = pageweb.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[5]/div/a/span").text
end
#Construction d'un hash avec des crochets[] puis on rentre la première valeur et on ferme les crochet ensuite = la deuxième valeur 
#Pour la méthode for, on prend une valeur x qui va de 1..20 (mais on peut changer les chiffres mettrent 0..50) puis on est allé prendre le hash = [le lien du xpath on est venu mettre #{x}pour le chiffre qui devait être modifié] = le deuxième tableau avec dans le lien la valeur à changer et on mets #{x}

puts hash #on appel le hash avec un .split et le tableau va automatiquement ce construire avec des {} et des =>.