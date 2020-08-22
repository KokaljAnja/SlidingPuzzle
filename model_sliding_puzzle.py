import random

ZMAGA = 'Z'



class Igra:
    def __init__(self, nakljucna_matrika, stevilo_potez=0):
        self.nakljucna_matrika = nakljucna_matrika
        print(self.nakljucna_matrika)

        self.stevilo_potez = stevilo_potez
        print(self.stevilo_potez)



    def premiki(self, stevilo):
        if stevilo > 15 and stevilo < 1:
            print('Error')
        else:
            izbrano_polje = self.polje(stevilo)
            prazno_polje = self.polje_0()

            if (prazno_polje == (izbrano_polje[0] - 1, izbrano_polje[1])
                or prazno_polje == (izbrano_polje[0] + 1, izbrano_polje[1])
                or prazno_polje == (izbrano_polje[0], izbrano_polje[1] - 1)
                or prazno_polje == (izbrano_polje[0], izbrano_polje[1] + 1)):
                self.nakljucna_matrika[prazno_polje[0]][prazno_polje[1]] = stevilo
                self.nakljucna_matrika[izbrano_polje[0]][izbrano_polje[1]] = 0
                #prazno_polje = (izbrano_polje[0], izbrano_polje[1])
                print(self.nakljucna_matrika)
                return self.nakljucna_matrika
            else:
                print('Neveljavna poteza, poizkusi znova!')

            if self.zmaga():
                return ZMAGA


    def polje_0(self):
        for x in range(len(self.nakljucna_matrika)):
            for y in range(len(self.nakljucna_matrika[x])):
                if self.nakljucna_matrika[x][y] == 0:
                    prazno_polje = (x, y)
        return prazno_polje

    
    def polje(self, stevilo):
        for i in range(len(self.nakljucna_matrika)):
            for j in range(len(self.nakljucna_matrika[i])):
                if stevilo == self.nakljucna_matrika[i][j]:
                    izbrano_polje = (i, j)
        return izbrano_polje
    

    def zmaga(self):
        if self.nakljucna_matrika == [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 0]]:
            return True
        else:
            return False

    
    def zadnja_poteza(self, stevilo):
        if stevilo == None:
            return self.nakljucna_matrika
        else:
            self.nakljucna_matrika = self.premiki(stevilo)
            print(self.nakljucna_matrika)
            return self.nakljucna_matrika

    
    def stevilo_premikov(self, stevilo):
        if stevilo == None:
            return self.stevilo_potez
        else:
            self.stevilo_potez += 1
            return self.stevilo_potez




def nova_igra():
    polje = [0 ,1 ,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    random.shuffle(polje)

    nakljucna_matrika = []
    while polje != []:
        nakljucna_matrika.append(polje[:4])
        polje = polje[4:]
    return Igra(nakljucna_matrika)



ZACETEK = 'A'
class Sliding_puzzle:
    def __init__(self):
        self.igre = {}

    def prost_id_igre(self):
        if self.igre == {}:
            return 0
        else:
            return max(self.igre.keys()) + 1
    
    def nova_igra(self):
        id_igre = self.prost_id_igre()
        igra = nova_igra()
        self.igre[id_igre] = (igra, ZACETEK)
        return id_igre

    def premiki(self, id_igre, stevilo):
        igra, _ = self.igre[id_igre]
        premik = igra.premiki(stevilo)
        self.igre[id_igre] = (igra, premik)