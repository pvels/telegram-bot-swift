// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation

public extension TelegramBot {
    typealias AnswerInlineQueryCompletion = (_ result: Bool?, _ error: DataTaskError?) -> ()

    /// Use this method to send answers to an inline query. On success, True is returned.
    /// No more than 50 results per query are allowed.
    /// - Parameters:
    ///     - inline_query_id: Unique identifier for the answered query
    ///     - results: A JSON-serialized array of results for the inline query
    ///     - cache_time: The maximum amount of time in seconds that the result of the inline query may be cached on the server. Defaults to 300.
    ///     - is_personal: Pass True, if results may be cached on the server side only for the user that sent the query. By default, results may be returned to any user who sends the same query
    ///     - next_offset: Pass the offset that a client should send in the next query with the same text to receive more results. Pass an empty string if there are no more results or if you don‘t support pagination. Offset length can’t exceed 64 bytes.
    ///     - switch_pm_text: If passed, clients will display a button with specified text that switches the user to a private chat with the bot and sends the bot a start message with the parameter switch_pm_parameter
    ///     - switch_pm_parameter: Parameter for the start message sent to the bot when user presses the switch button
    ///       Example: An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a ‘Connect your YouTube account’ button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that instructs the bot to return an oauth link. Once done, the bot can offer a switch_inline button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
    /// - Returns: Bool on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#answerinlinequery>
    @discardableResult
    public func answerInlineQuerySync(
            inline_query_id: String,
            results: [InlineQueryResult],
            cache_time: Int? = nil,
            is_personal: Bool? = nil,
            next_offset: String? = nil,
            switch_pm_text: String? = nil,
            switch_pm_parameter: String? = nil,
            _ parameters: [String: Any?] = [:]) -> Bool? {
        return requestSync("answerInlineQuery", defaultParameters["answerInlineQuery"], parameters, [
            "inline_query_id": inline_query_id,
            "results": results,
            "cache_time": cache_time,
            "is_personal": is_personal,
            "next_offset": next_offset,
            "switch_pm_text": switch_pm_text,
            "switch_pm_parameter": switch_pm_parameter])
    }

    /// Use this method to send answers to an inline query. On success, True is returned.
    /// No more than 50 results per query are allowed.
    /// - Parameters:
    ///     - inline_query_id: Unique identifier for the answered query
    ///     - results: A JSON-serialized array of results for the inline query
    ///     - cache_time: The maximum amount of time in seconds that the result of the inline query may be cached on the server. Defaults to 300.
    ///     - is_personal: Pass True, if results may be cached on the server side only for the user that sent the query. By default, results may be returned to any user who sends the same query
    ///     - next_offset: Pass the offset that a client should send in the next query with the same text to receive more results. Pass an empty string if there are no more results or if you don‘t support pagination. Offset length can’t exceed 64 bytes.
    ///     - switch_pm_text: If passed, clients will display a button with specified text that switches the user to a private chat with the bot and sends the bot a start message with the parameter switch_pm_parameter
    ///     - switch_pm_parameter: Parameter for the start message sent to the bot when user presses the switch button
    ///       Example: An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a ‘Connect your YouTube account’ button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that instructs the bot to return an oauth link. Once done, the bot can offer a switch_inline button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
    /// - Returns: Bool on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#answerinlinequery>
    public func answerInlineQueryAsync(
            inline_query_id: String,
            results: [InlineQueryResult],
            cache_time: Int? = nil,
            is_personal: Bool? = nil,
            next_offset: String? = nil,
            switch_pm_text: String? = nil,
            switch_pm_parameter: String? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: AnswerInlineQueryCompletion? = nil) {
        return requestAsync("answerInlineQuery", defaultParameters["answerInlineQuery"], parameters, [
            "inline_query_id": inline_query_id,
            "results": results,
            "cache_time": cache_time,
            "is_personal": is_personal,
            "next_offset": next_offset,
            "switch_pm_text": switch_pm_text,
            "switch_pm_parameter": switch_pm_parameter],
            queue: queue, completion: completion)
    }
}

