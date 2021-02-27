const themeToggle = () => {
  document.querySelector('#theme-toggle').addEventListener('click', () => {
    document.querySelector('#theme-link').click();
  });
};

export { themeToggle };
