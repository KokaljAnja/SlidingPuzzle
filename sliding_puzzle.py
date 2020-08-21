import bottle
import model_sliding_puzzle

SKRIVNOST = 'moja skrivnost'
sliding_puzzle = model_sliding_puzzle.Sliding_puzzle()



@bottle.get('/')
def index():
    return bottle.template('index.tpl')

@bottle.post("/nova_igra/")
def nova_igra():
    id_igre = sliding_puzzle.nova_igra()
    bottle.response.set_cookie("idigre", "idigre{0}".format(id_igre), secret=SKRIVNOST, path='/')
    bottle.redirect('/igra/')

@bottle.get('/igra/')
def pokazi_igro():
    id_igre = int(bottle.request.get_cookie('idigre', secret=SKRIVNOST).split('e')[1])
    igra, premik = sliding_puzzle.igre[id_igre]
    return bottle.template('igra_sliding_puzzle.tpl', igra=igra, premik=premik)

@bottle.post("/igra/")
def premiki():
    id_igre = int(bottle.request.get_cookie("idigre", secret=SKRIVNOST).split('e')[1])
    stevilo = bottle.request.forms.getunicode("stevilo")
    sliding_puzzle.premiki(id_igre, stevilo)
    bottle.redirect("/igra/")



bottle.run(reloader=True, debug=False)