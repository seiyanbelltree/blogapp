import React, {useState} from "react";


function Article() {
    const [isPublished, togglePublished] = useState(false)
    return(
      <>
        <label htmlFor="check">公開状態</label>
        <input type="checkbox" checked={isPublished} id="check" onClick={() => togglePublished(!isPublished)} />
      </>
    )
};

export default Article;