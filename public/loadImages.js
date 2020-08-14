for (let image of document.querySelectorAll('img[data-src]')) {
  image.setAttribute('src', image.getAttribute('data-src'));
  image.onload = () => {
    image.removeAttribute('data-src');
  };
}
