describe("Is Title there?", () => {
  it("checks if title is in index.html", () => {
    cy.visit("../../index.html");
    cy.contains("Backend Developer | AWS Certified");
  });
});

describe("Resume link working?", () => {
  it("checks if top link to resume works.", () => {
    cy.visit("../../index.html");

    cy.get(".btn-primary")
      .should("have.attr", "href")
      .and("include", "resume.pdf");

    cy.get(".btn-primary")
      .invoke("attr", "href")
      .then((href) => {
        cy.request(href).its("status").should("eq", 200);
      });
  });
});

describe("Outbound links working?", () => {
  it("checks if all outbound links are returning 200", () => {
    cy.visit("../../index.html");

    cy.get("a").each(($link) => {
      const href = $link.attr("href");

      if (href && !href.startsWith("http") && !href.startsWith("#")) {
        cy.request(href).its("status").should("eq", 200);
      }
    });
  });
});

