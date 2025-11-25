<script>
  let input = "";
  let output = "";
  let error = "";
<<<<<<< HEAD
=======
  let translationType = "yoda";

  // opções válidas da FunTranslations
  const types = [
    "yoda",
    "pirate",
    "shakespeare",
    "valyrian",
    "dolan",
    "gungan",
    "chef",
    "vulcan",
    "minion"
  ];
>>>>>>> ba16333bbf51b68aba32c991103639af2314b1da

  async function translate() {
    output = "";
    error = "";

<<<<<<< HEAD
    try {
      // IMPORTANTE: GET COM TEXTO NA URL
      const url =
        "https://api.funtranslations.com/translate/yoda.json?text=" +
        encodeURIComponent(input);

      const res = await fetch(url);

=======
    if (!input.trim()) {
      error = "Digite algo antes, né 💀";
      return;
    }

    try {
      const url =
        `https://api.funtranslations.com/translate/${translationType}.json?text=` +
        encodeURIComponent(input);

      const res = await fetch(url);
>>>>>>> ba16333bbf51b68aba32c991103639af2314b1da
      const data = await res.json();

      if (data.error) {
        error = data.error.message;
        return;
      }

      output = data.contents.translated;
<<<<<<< HEAD
    } catch (e) {
      error = "Erro ao conectar 😭 (provavelmente CORS)";
=======
    } catch (err) {
      error = "Erro ao conectar 😭 (CORS ou limite da API)";
>>>>>>> ba16333bbf51b68aba32c991103639af2314b1da
    }
  }
</script>

<<<<<<< HEAD
<h1>Tradutor Yoda</h1>

<input bind:value={input} placeholder="Digite algo" />
<button on:click={translate}>Traduzir</button>

{#if output}
  <p><strong>Resultado:</strong> {output}</p>
{/if}

{#if error}
  <p style="color:red;">{error}</p>
{/if}
=======
<h1>Fun Translator 💬✨</h1>

<div class="card">
  <select bind:value={translationType}>
    {#each types as t}
      <option value={t}>{t}</option>
    {/each}
  </select>

  <br /><br />

  <input
    bind:value={input}
    placeholder="Digite o texto pra traduzir"
    style="width: 80%; padding: 10px; border-radius: 6px;"
  />

  <br /><br />

  <button on:click={translate}>Traduzir</button>

  {#if output}
    <p class="result"><strong>Resultado:</strong> {output}</p>
  {/if}

  {#if error}
    <p style="color: red;">{error}</p>
  {/if}
</div>

<style>
  select {
    padding: 10px;
    border-radius: 8px;
    font-size: 1em;
    background-color: #1a1a1a;
    color: white;
    border: 1px solid #333;
  }

  select:hover {
    border-color: #646cff;
  }

  .result {
    margin-top: 20px;
    font-size: 1.2rem;
  }
</style>
>>>>>>> ba16333bbf51b68aba32c991103639af2314b1da
