import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Mister Cocktail", "Avec Alcool, la fête est plus folle !", "N'hésitez pas à ajouter vos ingrédients !"],
    typeSpeed: 70,

  });
}

export { loadDynamicBannerText };
