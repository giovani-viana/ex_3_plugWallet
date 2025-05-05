import Array "mo:base/Array";

actor {
  
  type Product = {
    title: Text;
    description: Text;
    price: Text;
    image: Text;    
  };    
  
  public query func getProducts() : async [Product] {    
      
      var products : [Product] = []; 

      let p1 : Product = { title = "Motoko para Iniciantes"; description = "Aprenda os fundamentos da linguagem Motoko e como criar DApps na ICP."; price = "50"; image = "../motoko.jpeg"};
      let p2 : Product = { title = "Tokens ICRC-1 e ICRC-2"; description = "Descubra como criar e gerenciar tokens na Internet Computer."; price = "70"; image = "../tokens.jpeg"};
      let p3 : Product = { title = "Front-end com React na ICP"; description = "Construa interfaces modernas para DApps usando React na ICP."; price = "20"; image = "../frontend.jpeg"};
      let p4 : Product = { title = "Chain Fusion na Prática"; description = "Entenda o o que é o projeto Chain Fusion e como utilizar ele na ICP."; price = "100"; image = "../chain_fusion.jpeg" };
      let p5 : Product = { title = "Dominando HTTPS Outcalls"; description = "Aprenda a realizar chamadas HTTPS para serviços externos a partir da blockchain da ICP."; price = "60"; image = "../http.jpeg" };
      let p6 : Product = { title = "NFTs na ICP"; description = "Aprenda como criar, mintar e vender NFTs usando a Internet Computer."; price = "100"; image = "../nft.jpeg"};

      products := Array.append(products, [p1]);
      products := Array.append(products, [p2]);
      products := Array.append(products, [p3]);
      products := Array.append(products, [p4]);
      products := Array.append(products, [p5]);
      products := Array.append(products, [p6]);

      return products;
  };



};
