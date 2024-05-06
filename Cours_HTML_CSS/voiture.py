class Voiture:
    def __init__(self, marque, vitesse, prix):
        self.marque = marque
        self.vitesse = vitesse
        self.prix = prix

    def afficher_prix(self):
        print("Le prix de la voiture est de", self.prix, "euros")

mercedes = Voiture(marque="Mercedes", vitesse=200, prix=90000)
mercedes.afficher_prix()
