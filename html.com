<!DOCTYPE html>
<html lang="en" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy - CashPulse</title>
    <style>
        :root {
            --bg-gradient: linear-gradient(135deg, #f1f5f9 0%, #e2e8f0 100%);
            --container-bg: rgba(255, 255, 255, 0.95);
            --text-primary: #0f172a;
            --text-secondary: #475569;
            --accent: #0284c7;
            --accent-glow: rgba(2, 132, 199, 0.15);
            --highlight-bg: #f0f9ff;
            --highlight-border: #0284c7;
            --card-bg: #f8fafc;
            --border-color: #cbd5e1;
            --pulse-color: #10b981;
        }

        [data-theme="dark"] {
            --bg-gradient: linear-gradient(135deg, #060b19 0%, #0f172a 55%, #071324 100%);
            --container-bg: rgba(15, 23, 42, 0.9);
            --text-primary: #f1f5f9;
            --text-secondary: #94a3b8;
            --accent: #38bdf8;
            --accent-glow: rgba(56, 189, 248, 0.2);
            --highlight-bg: rgba(14, 165, 233, 0.08);
            --highlight-border: #38bdf8;
            --card-bg: rgba(30, 41, 59, 0.65);
            --border-color: rgba(148, 163, 184, 0.2);
            --pulse-color: #34d399;
        }

        * {
            box-sizing: border-box;
            transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            line-height: 1.75;
            color: var(--text-primary);
            background: var(--bg-gradient);
            background-attachment: fixed;
            margin: 0;
            padding: 30px 18px;
        }

        .progress-bar {
            position: fixed;
            top: 0;
            left: 0;
            height: 4px;
            width: 0%;
            background: linear-gradient(90deg, var(--accent), var(--pulse-color));
            z-index: 9999;
            box-shadow: 0 0 10px var(--accent);
        }

        .container {
            max-width: 880px;
            margin: 0 auto;
            background: var(--container-bg);
            backdrop-filter: blur(14px);
            padding: 42px;
            border-radius: 18px;
            border: 1px solid var(--border-color);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.35);
        }

        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 15px;
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 20px;
            margin-bottom: 25px;
        }

        .brand-badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 0.6px;
            color: var(--accent);
            background: var(--accent-glow);
            padding: 6px 14px;
            border-radius: 999px;
            border: 1px solid var(--border-color);
        }

        .pulse-dot {
            width: 9px;
            height: 9px;
            border-radius: 50%;
            background-color: var(--pulse-color);
            box-shadow: 0 0 10px var(--pulse-color);
            animation: pulseAnim 1.8s infinite;
        }

        @keyframes pulseAnim {
            0% { transform: scale(0.95); opacity: 0.8; }
            50% { transform: scale(1.25); opacity: 1; }
            100% { transform: scale(0.95); opacity: 0.8; }
        }

        .theme-toggle {
            background: var(--card-bg);
            color: var(--text-primary);
            border: 1px solid var(--border-color);
            padding: 8px 16px;
            border-radius: 999px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .theme-toggle:hover {
            border-color: var(--accent);
            box-shadow: 0 0 14px var(--accent-glow);
        }

        h1 {
            margin: 0 0 8px 0;
            font-size: 32px;
            color: var(--text-primary);
        }

        .meta-info {
            color: var(--text-secondary);
            font-size: 14px;
            margin-bottom: 25px;
        }

        h2 {
            color: var(--accent);
            margin-top: 34px;
            font-size: 21px;
            padding-left: 12px;
            border-left: 4px solid var(--accent);
        }

        h3 {
            color: var(--text-primary);
            font-size: 17px;
            margin-top: 20px;
            margin-bottom: 8px;
        }

        p, li {
            font-size: 15.5px;
            color: var(--text-secondary);
        }

        strong {
            color: var(--text-primary);
        }

        ul {
            padding-left: 22px;
            margin-top: 6px;
        }

        li {
            margin-bottom: 9px;
        }

        .highlight-box {
            background: var(--highlight-bg);
            border-left: 4px solid var(--highlight-border);
            padding: 16px 20px;
            border-radius: 10px;
            margin: 22px 0;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 16px;
            margin-top: 18px;
        }

        .feature-card {
            background: var(--card-bg);
            border: 1px solid var(--border-color);
            padding: 18px;
            border-radius: 12px;
        }

        .feature-card h4 {
            margin: 0 0 8px 0;
            color: var(--accent);
            font-size: 16px;
        }

        .feature-card p {
            margin: 0;
            font-size: 14px;
        }

        .support-box {
            background: var(--card-bg);
            border: 1px solid var(--border-color);
            border-left: 5px solid var(--pulse-color);
            padding: 20px 24px;
            border-radius: 12px;
            margin-top: 20px;
        }

        a {
            color: var(--accent);
            text-decoration: none;
            font-weight: 600;
        }

        a:hover {
            text-decoration: underline;
        }

        .footer {
            margin-top: 45px;
            padding-top: 20px;
            border-top: 1px solid var(--border-color);
            text-align: center;
            font-size: 13.5px;
            color: var(--text-secondary);
        }

        @media (max-width: 600px) {
            .container {
                padding: 24px 18px;
            }
            h1 {
                font-size: 26px;
            }
        }
    </style>
</head>
<body>
    <div class="progress-bar" id="scrollProgress"></div>

    <div class="container">
        <div class="top-bar">
            <div class="brand-badge">
                <span class="pulse-dot"></span>
                CASHPULSE SECURITY &amp; PRIVACY
            </div>
            <button class="theme-toggle" id="themeToggle" type="button" aria-label="Toggle Night Mode">
                <span id="themeIcon">☀️</span>
                <span id="themeLabel">Light Mode</span>
            </button>
        </div>

        <h1>Privacy Policy</h1>
        <div class="meta-info">
            <strong>App Name:</strong> CashPulse &nbsp;|&nbsp; <strong>Effective Date:</strong> November 20, 2026
        </div>

        <p>Welcome to <strong>CashPulse</strong> ("we", "our", or "us"). Protecting your financial privacy, personal data, and digital trust is at the core of everything we build. This Privacy Policy explains transparently how <strong>CashPulse</strong> collects, processes, safeguards, and manages information when you use our mobile application and related services.</p>

        <div class="highlight-box">
            <strong>Privacy-First Core Architecture:</strong> CashPulse is engineered with a privacy-centric foundation aligned with modern financial tracking standards, keeping your transaction records under your direct control while delivering fast, pulse-driven financial insights.
        </div>

        <h2>1. Information We Collect</h2>
        <p>We collect only the information necessary to deliver responsive financial tracking, smart analytics, and reliable app performance:</p>

        <h3>A. Information You Provide</h3>
        <ul>
            <li><strong>Financial &amp; Cashflow Entries:</strong> Income, expenses, categories, budgets, tags, and notes that you manually enter into CashPulse.</li>
            <li><strong>Exported Statements:</strong> Reports or files (such as CSV or PDF) generated from your entries at your request.</li>
            <li><strong>Support &amp; Community Inquiries:</strong> Details you share when reaching out to us via email or official community channels.</li>
        </ul>

        <h3>B. Automated &amp; Technical Information</h3>
        <ul>
            <li><strong>Device &amp; Diagnostic Data:</strong> Operating system version, device model, app version, and crash/performance logs used strictly to maintain stability and fix bugs.</li>
            <li><strong>Feature Telemetry:</strong> Non-personally identifiable usage signals (such as screen navigation or feature adoption) that help us refine speed and usability.</li>
        </ul>

        <h2>2. Advanced &amp; Dynamic Capabilities</h2>
        <p>CashPulse is designed to go beyond basic expense logging with smart, responsive capabilities while respecting user boundaries:</p>

        <div class="feature-grid">
            <div class="feature-card">
                <h4>Real-Time Cashflow Pulse</h4>
                <p>Instantly visualizes cash inflows, outflows, and net balance shifts so you can track daily financial momentum at a glance.</p>
            </div>
            <div class="feature-card">
                <h4>Smart Categorization &amp; Trends</h4>
                <p>Organizes spending patterns and recurring financial activity to highlight budget trends and savings opportunities.</p>
            </div>
            <div class="feature-card">
                <h4>Instant Report Exports</h4>
                <p>Allows quick generation of structured summaries so you can review or back up your records anytime.</p>
            </div>
            <div class="feature-card">
                <h4>Adaptive Interface &amp; Security</h4>
                <p>Built with responsive UI states, dark-friendly visual comfort, and structured data protection controls.</p>
            </div>
        </div>

        <h2>3. How We Use Your Data</h2>
        <ul>
            <li>Compute real-time balances, cashflow summaries, category breakdowns, and financial trends.</li>
            <li>Generate exportable reports and maintain smooth application workflows.</li>
            <li>Detect technical issues, prevent abuse, and improve app speed, reliability, and user experience.</li>
        </ul>

        <h2>4. Data Storage, Encryption &amp; Security</h2>
        <ul>
            <li><strong>Protected Storage:</strong> Your financial records are stored securely to support reliable access and organized data management.</li>
            <li><strong>Transmission &amp; Safeguards:</strong> Where network communication occurs, modern encryption protocols and access controls help protect data against unauthorized access, alteration, or loss.</li>
        </ul>

        <h2>5. Zero Selling of Personal Data</h2>
        <ul>
            <li>We <strong>never</strong> sell, rent, or trade your personal or financial records to third-party data brokers or advertisers.</li>
            <li>Information is shared only when required to operate core app features, comply with applicable law, or protect user safety.</li>
        </ul>

        <h2>6. Your Rights &amp; Data Controls</h2>
        <ul>
            <li><strong>Full Edit &amp; Delete Control:</strong> You can add, update, or delete your entries and categories inside CashPulse whenever you choose.</li>
            <li><strong>Data Portability:</strong> You can export your records and request assistance regarding data removal through our support contact.</li>
        </ul>

        <h2>7. Policy Updates</h2>
        <p>We may update this Privacy Policy periodically as CashPulse evolves. Any updates will be published on this page with a revised <strong>Effective Date</strong>, and major release announcements will be shared through our official channels.</p>

        <h2>8. Developer Support &amp; Update Channels</h2>
        <p>For support, bug reports, feedback, or the latest announcements and updates about <strong>CashPulse</strong>, reach out through our official channels:</p>

        <div class="support-box">
            <p style="margin: 0 0 8px 0;"><strong>Developer Support Email:</strong> <a href="mailto:unknownsquad999@gmail.com">unknownsquad999@gmail.com</a></p>
            <p style="margin: 0;"><strong>Official Telegram Update Channel:</strong> <a href="https://t.me/YOUR_TELEGRAM_CHANNEL" target="_blank" rel="noopener noreferrer">t.me/YOUR_TELEGRAM_CHANNEL</a></p>
        </div>

        <div class="footer">
            <p style="margin: 0;">&copy; 2026 CashPulse. All rights reserved.</p>
        </div>
    </div>

    <script>
        const themeToggle = document.getElementById('themeToggle');
        const themeIcon = document.getElementById('themeIcon');
        const themeLabel = document.getElementById('themeLabel');
        const rootEl = document.documentElement;
        const progressBar = document.getElementById('scrollProgress');

        function applyTheme(theme) {
            rootEl.setAttribute('data-theme', theme);
            localStorage.setItem('cashpulse_theme', theme);
            if (theme === 'dark') {
                themeIcon.textContent = '☀️';
                themeLabel.textContent = 'Light Mode';
            } else {
                themeIcon.textContent = '🌙';
                themeLabel.textContent = 'Night Mode';
            }
        }

        const savedTheme = localStorage.getItem('cashpulse_theme') || 'dark';
        applyTheme(savedTheme);

        themeToggle.addEventListener('click', () => {
            const current = rootEl.getAttribute('data-theme');
            applyTheme(current === 'dark' ? 'light' : 'dark');
        });

        window.addEventListener('scroll', () => {
            const docHeight = document.documentElement.scrollHeight - window.innerHeight;
            const scrolled = docHeight > 0 ? (window.scrollY / docHeight) * 100 : 0;
            progressBar.style.width = scrolled + '%';
        });
    </script>
</body>
</html>
