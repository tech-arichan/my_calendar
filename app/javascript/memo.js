function memo() {
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    const formData = new FormData(document.getElementById("form"));
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/memos", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      }
      const item = XHR.response.memo;
      const list = document.getElementById("list");
      const formText = document.getElementById("memo");
      const HTML = `
        <div class="upper-memo">
          <p class="memo-date">
            日時:${item.created_at}
          </p>
        </div>
        <div class="upper-memo">
          <p class="memo-content">${item.memo}</p>
          <p class="memo-delete"><a rel="nofollow" data-method="delete" href="/memos/:id">メモ削除</a></p>
        </div>`;
      list.insertAdjacentHTML("afterend", HTML);
      formText.value = "";
    };
    e.preventDefault();
  });
}

window.addEventListener("load", memo);