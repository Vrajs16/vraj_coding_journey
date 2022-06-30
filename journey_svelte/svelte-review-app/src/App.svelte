<script>
  import FeedbackForm from "./components/FeedbackForm.svelte";
  import FeedbackList from "./components/FeedbackList.svelte";
  import FeedbackStats from "./components/FeedbackStats.svelte";
  // const addFeedback = (e) => {
  //   const newFeedback = e.detail;
  //   feedback = [newFeedback, ...feedback];
  // };
  // const deleteFeedback = (e) => {
  //   const itemId = e.detail;
  //   feedback = feedback.filter((item) => item.id != itemId);
  // };
</script>

<main class="container">
  <FeedbackForm />
  <!-- on:add-feedback={addFeedback} -->
  <FeedbackStats />
  <FeedbackList />
  <!-- on:delete-feedback={deleteFeedback}-->
</main>
