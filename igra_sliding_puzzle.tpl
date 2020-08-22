% import model_sliding_puzzle
% rebase('base.tpl', title='Sliding_Puzzle')


    <h1>Sliding Puzzle</h1>

    <blockquote>
     Obstaja 15 polj s številkami od 1 do 15 in eno polje je prazno, katero je prikazano
     s številom 0. Preden se igra začne, računalnik naključno določi začetni položaj polj.
     Premikaš lahko samo števila, ki so nad, pod, levo ali desno od 0. To pa narediš tako, da v spodnji
     kvadrat vpišeš število, ki ga želiš premakniti in klikneš "Pošlji premik". Pri tem pazi, da vnešeno Število
     ni večje od 15, ali pa celo 0, sicer se ne bo nič zgodilo.
    </blockquote>

    <table>
     <tr>
        <td>
        Število potez: <b>{{igra.stevilo_premikov(None)}}</b>
        </td>
     </tr>

    </table>

    <table border="16" cellspacing="5">
     
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

    <h1> ZMAGA! </h1>

    % else:

    <form action="/igra/" method="post">
        Število: <input type="text" name="stevilo">
        <button type="submit">Pošlji premik</button>
    </form>

    % end