% import model_sliding_puzzle
% rebase('base.tpl', title='SlidingPuzzle')



  <h1>Sliding Puzzle</h1>

  <blockquote>
  Sliding Puzzle ali premičnica je prav zabavna igra,
  ki vsebuje 15 oštevilčenih ploščic in eno prazno mesto na mreži
  4x4. Računalnik naključno izbere mesta oštevilčenih ploščic, tvoja naloga pa
  je, da s premikanjem praznega mesta dosežeš končni položaj ploščic (spodnja slika).
  Želim ti veliko sreče pri igranju!

  </blockquote>

  <form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>

  <img src="/img/SlidingPuzzle.jpg" alt="NEKI"/>