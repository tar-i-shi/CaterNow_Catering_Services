import React from 'react';
import { useNavigate } from "react-router-dom";

const HeroSection = () => {
    const navigate = useNavigate();

    return (
        <section className="hero-section">
            <div className="hero-content">
                <h1>Welcome to CaterNow</h1>
                <p>Where delicious flavors meet impeccable service! Whether you're planning a wedding,</p><p> corporate event, or private gathering, we bring expertly crafted meals and unforgettable dining experiences to your special occasions.</p>
            </div>

        </section>
    );
};

export default HeroSection;