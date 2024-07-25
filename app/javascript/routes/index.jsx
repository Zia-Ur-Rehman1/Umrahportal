import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Hotels from "../components/Hotel";

export default (
    <Router>
        <Routes>
            <Route path="/" element={<Home />} />
            {/* <Route path="/hotels/index" element={<Hotels />} /> */}
        </Routes>
    </Router>
);