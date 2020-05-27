import React, {useState} from "react";


function AddData() {
    const [isPublished, togglePublished] = useState(false)
    return(
      <>
        <label htmlFor="check">AddDataです</label>
        <input type="checkbox" checked={isPublished} id="check" onClick={() => togglePublished(!isPublished)} />
      </>
    )
};

export default AddData;