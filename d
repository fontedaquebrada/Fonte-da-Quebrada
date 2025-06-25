let carrinho = [];
let total = 0;

function adicionarCarrinho(produto, preco) {
  carrinho.push({ produto, preco });
  total += preco;
  atualizarCarrinho();
}

function atualizarCarrinho() {
  document.getElementById("total-carrinho").textContent = carrinho.length;
  const lista = document.getElementById("itens-carrinho");
  lista.innerHTML = "";
  carrinho.forEach((item, index) => {
    const li = document.createElement("li");
    li.textContent = `${item.produto} - R$ ${item.preco},00`;
    lista.appendChild(li);
  });
  document.getElementById("preco-total").textContent = total;
  const msg = carrinho.map(p => `${p.produto} - R$${p.preco},00`).join('%0A');
  document.getElementById("btn-whats").href = `https://wa.me/5511999990000?text=Quero%20comprar:%0A${msg}%0A%0ATotal:%20R$${total},00`;
}

function abrirCarrinho() {
  const carrinhoSecao = document.getElementById("carrinho");
  carrinhoSecao.style.display = carrinhoSecao.style.display === "none" ? "block" : "none";
}
