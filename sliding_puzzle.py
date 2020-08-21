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
    bottle.response.set_cookie("idigre", "idigre{0}".format(idigre), secret=SKRIVNOST, path='/')



bottle.run(reloader=True, debug=False)