import React from "react";
import "./Style/Catering.css";
import weddingCaterers from "../data/WeddingCatering.json"; // Import the JSON file
import CateringCard from "../components/CateringCard"; // Import the CateringCard component

const WeddingCatering = () => {
    return (
        <div className="wedding-container">
            {/* Hero Section with Background Image */}
            <div className="hero-section">
                <h1>Wedding Catering Services</h1>
                <p>Make your wedding day unforgettable with our exquisite catering services.</p>
            </div>

            {/* Horizontal Caterers List */}
            <div className="caterers-list">
                {weddingCaterers.map((caterer) => (
                    <CateringCard key={caterer.id} caterer={caterer} />
                ))}
            </div>


        </div>
    );
};

export default WeddingCatering;