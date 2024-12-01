import React from "react";
import { createRoot } from "react-dom/client";

const container = document.getElementById("root");

if (!container) {
  throw new Error("Couldn't find a root element");
}

const root = createRoot(container);

document.addEventListener("DOMContentLoaded", () => {
  root.render(
    <>
      <h1 className="text-red-700">呼ばれたよ</h1>
    </>
  );
});
