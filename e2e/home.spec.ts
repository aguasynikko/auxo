import { expect, test } from "@playwright/test";

test("home page renders with the auxo title", async ({ page }) => {
  await page.goto("/");

  await expect(page).toHaveTitle("auxo");
  await expect(page.getByRole("heading", { level: 1, name: "auxo" })).toBeVisible();
});
