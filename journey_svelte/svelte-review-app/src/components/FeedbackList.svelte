<script>
  import { FeedbackStore } from "../stores.js";
  import { fade, scale } from "svelte/transition";
  import FeedbackItem from "./FeedbackItem.svelte";
  // import { onDestroy, onMount } from "svelte";
  // let feedback = [];
  // const unsubscribe = FeedbackStore.subscribe((data) => (feedback = data));

  // onMount(() => {
  //   console.log("mounted");
  // });

  // onDestroy(() => {
  //   unsubscribe();
  // });
</script>

{#each $FeedbackStore as fb (fb.id)}
  <div in:scale out:fade={{ duration: 1000 }}>
    <FeedbackItem item={fb} />
    <!-- on:delete-feedback -->
  </div>
{/each}
