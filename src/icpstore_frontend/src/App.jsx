import { useState, useEffect } from 'react';
import { icpstore_backend } from 'declarations/icpstore_backend';
import { Principal } from '@dfinity/principal'; 
import { idlFactory } from '../../declarations/icpsc_icrc1_ledger_canister/icpsc_icrc1_ledger_canister.did.js';

function App() {

  //obtem o id do canister da ledger do token ICPSC
  const canisterLedgerId = process.env.CANISTER_ID_ICPSC_ICRC1_LEDGER_CANISTER;
  // Quando for desenvolvimento local a variavel process.env.DFX_NETWORK irá retornar a string 'local'
  const host = process.env.DFX_NETWORK === 'ic' ? 'https://mainnet.dfinity.network' : 'http://localhost:4943';

  const [products, setProducts] = useState([]);

  useEffect(() => {    
    const init = async () => {
      setProducts(await icpstore_backend.getProducts());
    }
    init();
  }, []);  

  return (
    <div className="container">
      <h1 className="titulo">Loja de Cursos da ICP</h1>
      <div className="grade-cursos">
        {products.map((p, index) => (
          <div key={index} className="card">
            <img src={p.image} alt={p.title} className="imagem" />
            <h2 className="card-titulo">{p.title}</h2>
            <p className="descricao">{p.description}</p>
            <button className="botao">Comprar</button>
          </div>
        ))}
      </div>
    </div>
  );
}

export default App;