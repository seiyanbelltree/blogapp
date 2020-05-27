import React, { useState, useEffect } from 'react';
import axios from 'axios';

function ApiTest() {
  const [data, setData] = useState("Loading...");

  useEffect(() => {
    const elem = document.querySelector("#message");
    fetch('https://api.zipaddress.net?zipcode=154-0003')
        .then((response) => response.json())
        .then((json) => elem.innerText = json.data.fullAddress);

    });

  return (
    <div>
        <form action="mailto:oasis@keio.jp" method="post" enctype="text/plain">
            <label>
                Name:
                <input type="text" name="コメント" />
            </label>
            <input type="submit" value="送信" />
        </form>
        <button>test</button>
        <p id="message"></p>
    </div>
  );
};

export default ApiTest;