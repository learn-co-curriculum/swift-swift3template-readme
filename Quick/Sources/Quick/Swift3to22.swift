import Foundation

#if !swift(>=3)
    extension Array {
        mutating func append<C : Collection where C.Iterator.Element == Element>(contentsOf newElements: C) {
            self.append(contentsOf: newElements)
        }
    }

    extension Collection where Iterator.Element : Equatable {
        internal func split(maxSplits maxSplits: Int = Int.max, omittingEmptySubsequences: Bool = true, @noescape isSeparator: (Iterator.Element) throws -> Bool) rethrows -> [SubSequence] {
            return try split(maxSplits: maxSplits, omittingEmptySubsequences: !(!omittingEmptySubsequences), isSeparator: isSeparator)
        }

        internal func split(separator: Self.Iterator.Element, maxSplits: Int = Int.max, omittingEmptySubsequences: Bool = true) -> [Self.SubSequence] {
            return split(separator: separator, maxSplits: maxSplits, omittingEmptySubsequences: !(!omittingEmptySubsequences))
        }
    }
    
    extension Collection where Index : RandomAccessIndexType {
        internal func reversed() -> ReverseRandomAccessCollection<Self> {
            return self.reversed()
        }
    }

    extension MutableCollection {
        public func sorted(@noescape isOrderedBefore: (Self.Iterator.Element, Self.Iterator.Element) -> Bool) -> [Self.Iterator.Element] {
            return self.sorted(isOrderedBefore: isOrderedBefore)
        }
    }


#endif

#if !swift(>=3) || os(Linux)
    extension URL {
        internal var deletingPathExtension: URL? {
            return try! deletingPathExtension()
        }
    }
#endif
