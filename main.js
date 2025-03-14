let isLoggedIn = false;
let scripts = [];
let freeScripts = [];

    // Load scripts when the page loads
async function loadScripts() {
    try {
        const response = await fetch('https://raw.githubusercontent.com/MaxiEliteExecutor/SaturnXHub/refs/heads/main/scripts.json');
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
            scripts = await response.json();

            // Separate free and premium scripts
            freeScripts = scripts.filter(script => !script.isPremium);
            renderScripts(); // Render free scripts first, then premium if logged in
        } catch (error) {
            console.error("Error loading scripts.json:", error);
            alert("Failed to load scripts. Please check the console and try again later.");
        }
    }

    // Render free and premium scripts based on login status
    function renderScripts() {
        const container = document.getElementById('content-container');
        if (!container) return; // Exit if container doesn't exist

        container.innerHTML = ''; // Clear existing content

        // Always render free scripts
        freeScripts.forEach(script => {
            const card = createScriptCard(script);
            container.appendChild(card);
        });

        // If logged in, render premium scripts
        if (isLoggedIn) {
            scripts.forEach(script => {
                if (script.isPremium) {
                    const card = createScriptCard(script);
                    container.appendChild(card);
                }
            });
        }
    }

    // Helper function to create a script card
    function createScriptCard(script) {
        const card = document.createElement('div');
        card.classList.add('script-card');
        card.innerHTML = `
            <h3>${script.name}</h3>
            <p>${script.description}</p>
            <button class="copy-btn" onclick="copyScript('${script.content}')">Copy Script</button>
        `;
        return card;
    }

function copyScript(content) {
    console.log('Content to copy:', content);
    navigator.clipboard.writeText(content)
        .then(() => {
            alert('Script copied to clipboard!');
        })
        .catch(err => {
            console.error('Failed to copy script: ', err);
            alert('Failed to copy script. Please try again.');
        });
}

    // Open login modal
    function openLoginModal() {
        document.getElementById('login-modal').style.display = 'block';
    }

    // Close login modal
    function closeLoginModal() {
        document.getElementById('login-modal').style.display = 'none';
    }

    // Login function with subscription check
    async function login() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        try {
            const response = await fetch('https://raw.githubusercontent.com/MaxiEliteExecutor/SaturnXHub/refs/heads/main/users.json');
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            const users = await response.json();

            const user = users.find(u => u.username === username && u.password === password);

            if (user) {
                const currentDate = new Date();
                const subscriptionEndDate = new Date(user.subscription_end_date);

                if (subscriptionEndDate < currentDate) {
                    alert("Your subscription has expired. Please renew to access the premium scripts.");
                    return;
                }

                alert("Login successful!");
                isLoggedIn = true;
                closeLoginModal();
                renderScripts();
            } else {
                alert("Invalid credentials!");
            }
        } catch (error) {
            console.error("Error logging in:", error);
            alert("Error logging in. Please check the console and try again later.");
        }
    }

    // Check if user is remembered
    window.onload = () => {
        loadScripts();
    };
