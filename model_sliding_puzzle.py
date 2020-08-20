import random

ZMAGA = 'Z'



class Igra:
    def __init__(self, nakljucna_matrika, stevilo_potez=0):
        self.nakljucna_matrika = nakljucna_matrika
        print(self.nakljucna_matrika)

        self.stevilo_potez = stevilo_potez
        print(self.stevilo_potez)

    
    def premiki(self, stevilo):
        if stevilo > 8:
            print('Error')
        else:
            izbrano_polje = self.polje(stevilo)
            prazno_polje = self.polje_0() if self.stevilo_potez == 0 else self.prazno_polje

            if (prazno_polje == (izbrano_polje[0] - 1, izbrano_polje[1])
                or prazno_polje == (izbrano_polje[0] + 1, izbrano_polje[1])
                or prazno_polje == (izbrano_polje[0], izbrano_polje[1] - 1)
                or prazno_polje == (izbrano_polje[0], izbrano_polje[1] + 1)):
                self.nakljucna_matrika[prazno_polje[0]][prazno_polje[1]] = stevilo
                self.nakljucna_matrika[izbrano_polje[0]][izbrano_polje[1]] = 0
                self. prazno_polje = (izbrano_polje[0], izbrano_polje[1])
                print(self.nakljucna_matrika)
                self.stevilo_potez += 1
                print(self.stevilo_potez)
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
        if self.nakljucna_matrika == [[0, 1, 2], [3, 4, 5], [6, 7, 8]]:
            return True
        else:
            return False



def nova_igra():
    polje = [0 ,1 ,2, 3, 4, 5, 6, 7, 8]
    random.shuffle(polje)

    nakljucna_matrika = []
    while polje != []:
        nakljucna_matrika.append(polje[:3])
        polje = polje[3:]
    return Igra(nakljucna_matrika)