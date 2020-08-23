% import model_sliding_puzzle
% rebase('base.tpl', title='Sliding_Puzzle')


    <h1>Sliding Puzzle</h1>

    <blockquote>
     Obstaja 15 polj s številkami od 1 do 15 in eno prazno polje, katero je prikazano
     s številom 0. Preden se igra začne, računalnik naključno določi začetni položaj polj.
     Premikamo lahko samo števila, ki so nad, pod, levo ali desno od 0. To pa naredimo tako, da v spodnji
     kvadrat vpišemo število, ki ga želimo premakniti in kliknemo "Pošlji premik". Vnešeno število
     naj ne bo 0 in večje od 15. V nasprotnem primeru nam računalnik javi napako. Enako se zgodi, če kliknemo 
     "Pošlji premik" brez vnešenega števila.

     V primeru napake se moramo vrniti na prejšno stran. To pa naredimo tako, da enostavno kliknemo
     na brskalniku puščico "nazaj" in brez problema nadaljujemo z igro.
    </blockquote>

    <blockquote>
     Cilj igre je razporediti števila po vrsti od levega zgornjega kota do desnega spodnjega kota. Polje 0, pa se
     mora nahajati na zadnje mestu oziroma v spodnjem desnem polju.
    </blockquote>

    
    Število potez: <b>{{igra.stevilo_premikov(None)}}</b>
    

    </table>
    

    <table>
     <style>
      div {
        padding: 10px;
        font-family: Arial;
        font-size: 15pt;
      }
      table, th, td {
        border: 1px solid black;
        padding: 10px;
        text-align: center;
        font-family: Arial;
        font-size: 25pt;
      }
     </style>
      <tr>
       <td>
       <b>{{igra.zadnja_poteza(None)[0][0]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[0][1]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[0][2]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[0][3]}}</b>
       </td>

      </tr>

      <tr>
       <td>
       <b>{{igra.zadnja_poteza(None)[1][0]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[1][1]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[1][2]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[1][3]}}</b>
       </td> 

      </tr>

      <tr>
       <td>
       <b>{{igra.zadnja_poteza(None)[2][0]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[2][1]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[2][2]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[2][3]}}</b>
       </td>

      </tr>

      <tr>
       <td>
       <b>{{igra.zadnja_poteza(None)[3][0]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[3][1]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[3][2]}}</b>
       </td>

       <td>
       <b>{{igra.zadnja_poteza(None)[3][3]}}</b>
       </td>

      </tr>

    </table>



    % if premik == model_sliding_puzzle.ZMAGA:

    <img src="/img/YouWin.jpg" alt="NEKI"/>

    <form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>


    % else:

    <form action="/igra/" method="post">
        Število: <input type="text" name="stevilo">
        <button type="submit">Pošlji premik</button>
    </form>

    % end