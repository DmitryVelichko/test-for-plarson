// Реализация $(function () {}) для window.onload

function onLoadFunc(callBackFunc) {
  document.addEventListener("readystatechange", () => {
    if (document.readyState === "interactive") {
      callBackFunc();
      document.addEventListener("DOMContentLoaded", () => {
        callBackFunc();
      });
    }
  });
}

const anonymousFunc = () => {
  console.log("Hello World");
};

onLoadFunc(anonymousFunc);
