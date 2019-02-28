console.log("hello")

const showNewGoal = () => {
  const newGoalBox = document.querySelector('.hidden');
  newGoalBox.classList.remove('hidden');
  window.scrollTo(0,document.body.scrollHeight);
};

const newGoalBtn = document.querySelector('.new-goal-btn');
if (newGoalBtn != null){
  newGoalBtn.addEventListener('click', showNewGoal);
}

export { showNewGoal };



