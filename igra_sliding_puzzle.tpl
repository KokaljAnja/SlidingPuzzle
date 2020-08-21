% import model_sliding_puzzle
% rebase('base.tpl', title='Sliding_Puzzle')


    <h1>Sliding Puzzle</h1>

    <blockquote>
     Dodaj besedilo

    </blockquote>

    <table>
     <tr>
        <td>
        Število potez: <b>{{igra.stevilo_premikov(None)}}</b>
        </td>
     </tr>

    </table>

    <table>
     
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
     </tr>

    </table>

    % if premik == model_sliding_puzzle.ZMAGA:

    <h1> ZMAGA! </h1>

    % else:

    <form action="/igra/" method="post">
        Stevilo: <input type="text" name="stevilo">
        <button type="submit">Pošlji premik</button>
    </form>

    % end