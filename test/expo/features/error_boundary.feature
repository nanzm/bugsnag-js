Feature: Error boundaries

Background:
  Given the element "errorBoundary" is present
  And I click the element "errorBoundary"

Scenario: A render error is captured by an error boundary
  Given the element "errorBoundaryButton" is present
  When I click the element "errorBoundaryButton"
  Then I wait to receive a request
  And the exception "errorClass" equals "Error"

Scenario: When a render error occurs, a fallback is presented
  Given the element "errorBoundaryFallbackButton" is present
  When I click the element "errorBoundaryFallbackButton"
  Then I wait to receive a request
  And the exception "errorClass" equals "Error"
  And the element "errorBoundaryFallback" is present