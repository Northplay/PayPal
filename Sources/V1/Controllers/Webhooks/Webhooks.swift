import PayPal
import Vapor

/// The PayPal REST APIs use [webhooks](https://developer.paypal.com/docs/integration/direct/webhooks) for event notification.
/// Webhooks are HTTP callbacks that receive notification messages for events. After you configure a webhook listener for your
/// app, you can [create a webhook](https://developer.paypal.com/docs/api/webhooks/v1/#webhooks_create), which subscribes
/// the webhook listener for your app to events. The `notifications` namespace contains resource collections for webhooks.
///
/// # Webhooks
///
/// Use the `/webhooks` resource to create, show details for, list all, update, and delete webhooks.
public final class Webhooks: VersionedController {
    
    /// See `VersionedController.client`
    public let client: PayPalClient
    
    /// See `VersionedController.resource`.
    public let resource: [String]
    
    /// See `VersionedController.init(client:)`.
    public init(client: PayPalClient) {
        self.client = client
        self.resource = ["notifications", "webhooks"]
    }
    
    /// Subscribes your webhook listener to events.
    ///
    /// A successful request returns the HTTP 201 Created status code and a JSON response body with a
    /// `Webhook` object that includes the webhook ID for later use.
    ///
    /// - Parameter webhook: The `Webhook` instance to create
    public func create(webhook: Webhook) -> EventLoopFuture<Webhook> {
        return self.client.post(self.path, body: webhook, as: Webhook.self)
    }
}
