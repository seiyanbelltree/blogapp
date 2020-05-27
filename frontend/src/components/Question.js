import React, {useState} from "react";


function Question() {
    const [isPublished, togglePublished] = useState(false)
    return(
      <>
        <label htmlFor="check">Questionです</label>
        <input type="checkbox" checked={isPublished} id="check" onClick={() => togglePublished(!isPublished)} />
      </>
    )
};

export default Question;