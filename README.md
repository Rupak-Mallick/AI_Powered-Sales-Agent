# Sales Agent AI Assistant

## Setup Guide

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Start PostgreSQL and create the database using:
```bash
sudo service postgresql start
sudo -u postgres psql -f db/setup.sql
```

3. Export environment variables or use a `.env` file:
```
DB_NAME=sales_agent_db
DB_USER=agent_user
DB_PASSWORD=demo_password_123
DB_HOST=localhost
DB_PORT=5432
GROQ_API_KEY=your_groq_key
TAVILY_API_KEY=your_tavily_key
```

4. Run the agent:
```bash
python app/main.py
```

## Sample Queries

- What's 35% of 1400?
- What are the total sales for Laptop A?
- What are the latest AI frameworks released in 2025?
- How much would 3 Phone Bs and 2 Chair Cs cost?
