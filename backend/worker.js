// Cloudflare Worker for AuraHabit Mock API
// Generated autonomously by Native Ready Engine (v0.8.0)

const SEED_DATA = [
  { id: "1", title: "Morning Deep Focus", category: "productivity", streak: 12, completedToday: true, updatedAt: new Date().toISOString() },
  { id: "2", title: "Hydration & Electrolytes", category: "health", streak: 45, completedToday: false, updatedAt: new Date().toISOString() },
  { id: "3", title: "Evening Reflection", category: "mindfulness", streak: 7, completedToday: false, updatedAt: new Date().toISOString() }
];

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const method = request.method;

    const headers = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, PATCH, DELETE, OPTIONS",
      "Access-Control-Allow-Headers": "Content-Type, Authorization"
    };

    if (method === "OPTIONS") {
      return new Response(null, { headers });
    }

    // Health check
    if (url.pathname === "/api/v1/health") {
      return new Response(JSON.stringify({ status: "ok", app: "AuraHabit", environment: "edge-mock" }), { headers });
    }

    // List entities
    if (url.pathname === "/api/v1/habits" && method === "GET") {
      return new Response(JSON.stringify({ data: SEED_DATA, total: SEED_DATA.length }), { headers });
    }

    // Get single entity
    const singleMatch = url.pathname.match(/^\/api\/v1\/habits\/([^\/]+)$/);
    if (singleMatch && method === "GET") {
      const item = SEED_DATA.find(d => d.id === singleMatch[1]);
      if (!item) return new Response(JSON.stringify({ error: "Not found" }), { status: 404, headers });
      return new Response(JSON.stringify({ data: item }), { headers });
    }

    return new Response(JSON.stringify({ error: "Route not found", path: url.pathname }), { status: 404, headers });
  }
};
