import Array "mo:base/Array";

actor {
  
  type Product = {
    title: Text;
    description: Text;
    image: Text;    
  };    
  
  public query func getProducts() : async [Product] {    
      
      var products : [Product] = []; 

      let p1 : Product = { title = "Motoko para Iniciantes"; description = "Aprenda os fundamentos da linguagem Motoko e como criar DApps na ICP."; image = "https://via.placeholder.com/300x180?text=Motoko"};
      let p2 : Product = { title = "Tokens ICRC-1 e ICRC-2"; description = "Descubra como criar e gerenciar tokens na Internet Computer."; image = "https://via.placeholder.com/300x180?text=ICRC"};
      let p3 : Product = { title = "Front-end com React na ICP"; description = "Construa interfaces modernas para DApps usando React na ICP."; image = "https://via.placeholder.com/300x180?text=React"};
      let p4 : Product = { title = "Canisters e Deploys"; description = "Entenda o ciclo de vida dos canisters e como fazer deploy na ICP."; image = "https://via.placeholder.com/300x180?text=Canisters" };
      let p5 : Product = { title = "Web3 e Identidade Descentralizada"; description = "Explore conceitos de identidade na Web3 e autenticação na ICP."; image = "https://via.placeholder.com/300x180?text=Web3" };
      let p6 : Product = { title = "NFTs na ICP"; description = "Aprenda como criar, mintar e vender NFTs usando a Internet Computer."; image = "https://via.placeholder.com/300x180?text=NFTs"};

      products := Array.append(products, [p1]);
      products := Array.append(products, [p2]);
      products := Array.append(products, [p3]);
      products := Array.append(products, [p4]);
      products := Array.append(products, [p5]);
      products := Array.append(products, [p6]);

      return products;
  };



};
