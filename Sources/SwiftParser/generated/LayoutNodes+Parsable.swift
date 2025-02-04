//// Automatically generated by generate-swift-syntax
//// Do not edit directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

#if compiler(>=6)
@_spi(RawSyntax) @_spi(ExperimentalLanguageFeatures) @_spi(Compiler) public import SwiftSyntax
#else
@_spi(RawSyntax) @_spi(ExperimentalLanguageFeatures) @_spi(Compiler) import SwiftSyntax
#endif

public protocol SyntaxParseable: SyntaxProtocol {
  static func parse(from parser: inout Parser) -> Self
}

extension AccessorBlockSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseAccessorBlock()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension AccessorDeclSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseAccessorDecl()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension AttributeSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseAttribute()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension AvailabilityMacroDefinitionSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseAvailabilityMacroDefinition()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension CatchClauseSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseCatchClause()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension ClosureParameterSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseClosureParameter()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension CodeBlockItemSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseNonOptionalCodeBlockItem()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension CodeBlockSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseCodeBlock()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension DeclSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseDeclaration()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension EnumCaseParameterSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseEnumCaseParameter()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension ExprSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseExpression()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension FunctionParameterSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseFunctionParameter()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension GenericParameterClauseSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseGenericParameters()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension MemberBlockSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseMemberBlock()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension PatternSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parsePattern()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension SourceFileSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseSourceFile()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension StmtSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseStatement()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension SwitchCaseSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseSwitchCase()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension TypeSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseType()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

extension VersionTupleSyntax: SyntaxParseable {
  public static func parse(from parser: inout Parser) -> Self {
    // Keep the parser alive so that the arena in which `raw` is allocated
    // doesn’t get deallocated before we have a chance to create a syntax node
    // from it. We can’t use `parser.arena` as the parameter to
    // `Syntax(raw:arena:)` because the node might have been re-used during an
    // incremental parse and would then live in a different arena than
    // `parser.arena`.
    defer {
      withExtendedLifetime(parser) {
      }
    }
    let node = parser.parseVersionTuple()
    let raw = RawSyntax(parser.parseRemainder(into: node))
    return Syntax(raw: raw, rawNodeArena: parser.arena).cast(Self.self)
  }
}

fileprivate extension Parser {
  mutating func parseNonOptionalCodeBlockItem() -> RawCodeBlockItemSyntax {
    guard let node = self.parseCodeBlockItem(isAtTopLevel: false, allowInitDecl: true) else {
      // The missing item is not necessary to be a declaration,
      // which is just a placeholder here
      return RawCodeBlockItemSyntax(
        item: .init(
          decl: RawMissingDeclSyntax(
            attributes: self.emptyCollection(RawAttributeListSyntax.self),
            modifiers: self.emptyCollection(RawDeclModifierListSyntax.self),
            arena: self.arena
          )
        ),
        semicolon: nil,
        arena: self.arena
      )
    }
    return node
  }

  mutating func parseExpression() -> RawExprSyntax {
    return self.parseExpression(flavor: .basic, pattern: .none)
  }
}
