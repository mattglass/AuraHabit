// Local Zero-Dependency Mock HTTP Server for AuraHabit
// Run with: node server.js

const http = require("http");

let records = [
  { id: "1", title: "Morning Deep Focus", category: "productivity", streak: 12, completedToday: true, updatedAt: new Date().toISOString() },
  { id: "2", title: "Hydration & Electrolytes", category: "health", streak: 45, completedToday: false, updatedAt: new Date().toISOString() },
  { id: "3", title: "Evening Reflection", category: "mindfulness", streak: 7, completedToday: false, updatedAt: new Date().toISOString() }
];

const server = http.createServer((req, res) => {
  res.setHeader("Content-Type", "application/json");
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Methods", "GET, POST, PATCH, DELETE, OPTIONS");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");

  if (req.method === "OPTIONS") {
    res.writeHead(204);
    res.end();
    return;
  }

  const url = new URL(req.url, `http://${req.headers.host}`);

  if (url.pathname === "/api/v1/health") {
    res.writeHead(200);
    res.end(JSON.stringify({ status: "ok", app: "AuraHabit", environment: "local-mock" }));
    return;
  }

  if (url.pathname === "/api/v1/habits" && req.method === "GET") {
    res.writeHead(200);
    res.end(JSON.stringify({ data: records, total: records.length }));
    return;
  }

  res.writeHead(404);
  res.end(JSON.stringify({ error: "Route not found", path: url.pathname }));
});

const PORT = process.env.PORT || 8787;
if (require.main === module) {
  server.listen(PORT, () => {
    console.log(`[AuraHabit Mock API] Server listening on http://localhost:${PORT}`);
  });
}

module.exports = server;
