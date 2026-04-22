import Foundation
import CommonCrypto

private enum RubatobleError: Error {
    case tilianData
    case smeasureKey
    case lphraselv
    case nchorStatus
}

private final class PortamentoJade {
    private let atempoKey = "jkj4U0NCWLZnWZP5"
    private let cadenzaIv = "iKdh1D3FfU0MnktA"

    func vexlureFor(_ melineText: String) throws -> String {
        guard let tinsicData = Data(base64Encoded: melineText) else {
            throw RubatobleError.tilianData
        }

        let rbriskData = Data(atempoKey.utf8)
        let sforzIvData = Data(cadenzaIv.utf8)

        guard [16, 24, 32].contains(rbriskData.count) else {
            throw RubatobleError.smeasureKey
        }

        guard sforzIvData.count == kCCBlockSizeAES128 else {
            throw RubatobleError.lphraselv
        }

        var dbreathou = Data(count: tinsicData.count + kCCBlockSizeAES128)
        var cturning: size_t = 0
        let eclipCount = dbreathou.count

        let status = dbreathou.withUnsafeMutableBytes { etubeBytes in
            tinsicData.withUnsafeBytes { ioralBytes in
                rbriskData.withUnsafeBytes { kshiftBytes in
                    sforzIvData.withUnsafeBytes { vtrailBytes in
                        CCCrypt(
                            CCOperation(kCCDecrypt),
                            CCAlgorithm(kCCAlgorithmAES),
                            CCOptions(kCCOptionPKCS7Padding),
                            kshiftBytes.baseAddress,
                            rbriskData.count,
                            vtrailBytes.baseAddress,
                            ioralBytes.baseAddress,
                            tinsicData.count,
                            etubeBytes.baseAddress,
                            eclipCount,
                            &cturning
                        )
                    }
                }
            }
        }

        guard status == kCCSuccess else {
            throw RubatobleError.nchorStatus
        }

        dbreathou.removeSubrange(cturning..<dbreathou.count)

        guard let pglowent = String(data: dbreathou, encoding: .utf8) else {
            throw RubatobleError.tilianData
        }

        return pglowent
    }
}

extension String {
    func brokenchoDecipher() -> String {
        do {
            return try PortamentoJade().vexlureFor(self)
        } catch {
            return ""
        }
    }
}
