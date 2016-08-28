// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation

public extension TelegramBot {
    typealias LeaveChatCompletion = (_ result: Bool?, _ error: DataTaskError?) -> ()

    /// Use this method for your bot to leave a group, supergroup or channel. Returns True on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    /// - Returns: Bool on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#leavechat>
    @discardableResult
    public func leaveChatSync(
            chat_id: ChatId,
            _ parameters: [String: Any?] = [:]) -> Bool? {
        return requestSync("leaveChat", defaultParameters["leaveChat"], parameters, [
            "chat_id": chat_id])
    }

    /// Use this method for your bot to leave a group, supergroup or channel. Returns True on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    /// - Returns: Bool on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#leavechat>
    public func leaveChatAsync(
            chat_id: ChatId,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: LeaveChatCompletion? = nil) {
        return requestAsync("leaveChat", defaultParameters["leaveChat"], parameters, [
            "chat_id": chat_id],
            queue: queue, completion: completion)
    }
}

