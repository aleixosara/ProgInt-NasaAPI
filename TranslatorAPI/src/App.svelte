
<script>
  let input = "";
  let output = "";
  let error = "";
  let translationType = "yoda";

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

  async function translate() {
    output = "";
    error = "";

    if (!input.trim()) {
      error = "Digite algo antes, né 💀";
      return;
    }

    const url = `https://api.funtranslations.com/translate/${translationType}.json?text=${encodeURIComponent(input)}`;

    try {
      const res = await fetch(url);
      const data = await res.json();

      if (data.error) {
        error = data.error.message;
        return;
      }

      output = data.contents.translated;
    } catch (e) {
      error = "Erro ao conectar 😭";
    }
  }
</script>

<h1>Fun Translator 💬✨</h1>

<select bind:value={translationType}>
  {#each types as t}
    <option value={t}>{t}</option>
  {/each}
</select>

<input bind:value={input} placeholder="Digite o texto" />

<button on:click={translate}>Traduzir</button>

{#if output}
  <p><strong>Resultado:</strong> {output}</p>
{/if}

{#if error}
  <p style="color:red;">{error}</p>
{/if}