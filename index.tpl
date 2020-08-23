% import model_sliding_puzzle
% rebase('base.tpl', title='SlidingPuzzle')



  <h1>Sliding Puzzle</h1>

  <blockquote>
  Sliding Puzzle ali Premičnica je prav zabavna igra.
  Vsebuje 15 oštevilčenih ploščic in eno prazno mesto na mreži
  4x4. Računalnik naključno izbere mesta oštevilčenih ploščic, naša naloga pa
  je, da s premikanjem praznega mesta dosežemo končni položaj ploščic (spodnja slika).
  Želim vam veliko sreče pri igranju!

  </blockquote>

  <form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>

  <img src="/img/SlidingPuzzle.jpg" alt="NEKI"/>