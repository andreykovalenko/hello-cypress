describe('Navigate to the app', () => {
    before(() => {
        cy.visit('http://localhost:3000');
    })
    it('asserts that <title> is correct', () => {

        cy.title().should('include', 'React App');
    });

    it("assers body has title", () => {

        cy.get('.App-title').should('have', "Welcome to React");
    })

});