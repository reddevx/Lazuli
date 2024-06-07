document.addEventListener('keydown', function (event) {
    // Verifica se a combinação de teclas Ctrl + U é pressionada (Ctrl + U tem o código 85 no evento 'keydown')
    if (event.ctrlKey && event.keyCode === 85) {
      event.preventDefault(); // Impede o comportamento padrão (abrir a visualização do código-fonte)
      alert("A visualização do código-fonte está desativada.");
    }
  });

  const texto = "Bem vindo(a) a Lazuli.";
  const delay = 100; 
  let index = 0;
  function typeWriter() {
    if (index < texto.length) {
      document.getElementById('texto-animado').innerHTML += texto.charAt(index);
      index++;
      setTimeout(typeWriter, delay);
    }
  }

  window.onload = function () {
    typeWriter();
  };