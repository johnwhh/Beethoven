import AVFoundation

public struct Config {
  public let bufferSize: AVAudioFrameCount
  public let estimationStrategy: EstimationStrategy
  public let audioUrl: URL?
  public let automaticallyEnablesVoiceProcessing: Bool

  // MARK: - Initialization

  public init(bufferSize: AVAudioFrameCount = 4096,
              estimationStrategy: EstimationStrategy = .yin,
              audioUrl: URL? = nil,
              automaticallyEnablesVoiceProcessing: Bool = false
  ) {
      self.bufferSize = bufferSize
      self.estimationStrategy = estimationStrategy
      self.audioUrl = audioUrl
      self.automaticallyEnablesVoiceProcessing = automaticallyEnablesVoiceProcessing
  }
}
