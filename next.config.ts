import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Keep `next dev` from writing an AGENTS.md; project instructions live in CLAUDE.md.
  agentRules: false,
};

export default nextConfig;
