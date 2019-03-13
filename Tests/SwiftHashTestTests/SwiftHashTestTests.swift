import XCTest
import class Foundation.Bundle
import CryptoSwift
import FNV
import MurmurHash_Swift
import xxHash_Swift

final class SwiftHashTestTests: XCTestCase {
	let vector = [UInt8](repeating: UInt8.max, count: 1024 * 1024)
	
	override class func tearDown() {
		super.tearDown()
		
		print("tearDown")
	}

	// https://github.com/krzyzanowskim/CryptoSwift/
    func testCryptoSwiftMD5Performance() throws {
		self.measure {
			_ = Digest.md5(vector)
		}
    }

	func testCryptoSwiftSHA1Performance() throws {
		self.measure {
			_ = Digest.sha1(vector)
		}
	}
	
	func testCryptoSwiftSHA256Performance() throws {
		self.measure {
			_ = Digest.sha256(vector)
		}
	}
	
	
	// https://github.com/daisuke-t-jp/FNV/
	func testFNV0_32Performance() throws {
		self.measure {
			_ = FNV.FNV0_32.digest(vector)
		}
	}
	
	func testFNV0_64Performance() throws {
		self.measure {
			_ = FNV.FNV0_64.digest(vector)
		}
	}
	
	func testFNV1_32Performance() throws {
		self.measure {
			_ = FNV.FNV1_32.digest(vector)
		}
	}
	
	func testFNV1_64Performance() throws {
		self.measure {
			_ = FNV.FNV1_64.digest(vector)
		}
	}
	
	func testFNV1a_32Performance() throws {
		self.measure {
			_ = FNV.FNV1a_32.digest(vector)
		}
	}
	
	func testFNV1a_64Performance() throws {
		self.measure {
			_ = FNV.FNV1a_64.digest(vector)
		}
	}
	
	
	// https://github.com/daisuke-t-jp/MurmurHash-Swift/
	func testMurmurHash3_x86_32Performance() throws {
		self.measure {
			_ = MurmurHash3.x86_32.digest(vector)
		}
	}

	func testMurmurHash3_x86_128Performance() throws {
		self.measure {
			_ = MurmurHash3.x86_128.digest(vector)
		}
	}
	
	func testMurmurHash3_x64_128Performance() throws {
		self.measure {
			_ = MurmurHash3.x64_128.digest(vector)
		}
	}

	
	// https://github.com/daisuke-t-jp/xxHash-Swift/
	func testXXHash32Performance() throws {
		self.measure {
			_ = xxHash32.digest(vector)
		}
	}
	
	func testXXHash64Performance() throws {
		self.measure {
			_ = xxHash64.digest(vector)
		}
	}
	
	
	static var allTests = [
		("testCryptoSwiftMD5Performance", testCryptoSwiftMD5Performance),
		("testCryptoSwiftSHA1Performance", testCryptoSwiftSHA1Performance),
		("testCryptoSwiftSHA256Performance", testCryptoSwiftSHA256Performance),
		("testFNV0_32Performance", testFNV0_32Performance),
		("testFNV0_64Performance", testFNV0_64Performance),
		("testFNV1_32Performance", testFNV1_32Performance),
		("testFNV1_64Performance", testFNV1_64Performance),
		("testFNV1a_32Performance", testFNV1a_32Performance),
		("testFNV1a_64Performance", testFNV1a_64Performance),
		("testMurmurHash3_x86_32Performance", testMurmurHash3_x86_32Performance),
		("testMurmurHash3_x86_128Performance", testMurmurHash3_x86_128Performance),
		("testMurmurHash3_x64_128Performance", testMurmurHash3_x64_128Performance),
		("testXXHash32Performance", testXXHash32Performance),
		("testXXHash64Performance", testXXHash64Performance),
    ]
}
