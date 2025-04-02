import React from "react";
import "./Style/Catering.css";
import PrivateCaterers from "../data/PrivateCatering.json"; // Import the JSON file
import CateringCard from "../components/CateringCard"; // Import the CateringCard component

const PrivateCatering = () => {
    return (
        <div className="private-container">
            {/* Hero Section with Background Image */}
            <div className="hero-section">
                <h1>Private Catering Services</h1>
                <p>Make your Private parties unforgettable with our exquisite catering services.</p>
            </div>

            {/* Horizontal Caterers List */}
            <div className="caterers-list">
                {PrivateCaterers.map((caterer) => (
                    <CateringCard key={caterer.id} caterer={caterer} />
                ))}
            </div>


        </div>
    );
};

export default PrivateCatering;