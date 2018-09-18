# Swift WeakRef Framework

A Swift framework to provide a generic weak reference wrapper for Swift.AnyObject.
This allows retain cycles to be avoided without forcing the use of weak properties in the referencing object.

## Usage

```
    let child = Child()  // retain count 1
    let parent = Parent(child: WeakRef(child))  // no additional retain count for object
    child.parent = parent
```

retain cycle is avoided without either child.parent or parent.child having to be a weak property.

To allow WeakRef to be used in place of an object, the property type should be a protocol and WeakRef should be extended to conform to that protocol.


## Resources

This has been a fairly common pattern for a while in swift but most recently I was reminded of it by the [Essential Developer YouTube series](https://www.youtube.com/results?search_query=essentialdeveloper).

- [Essential Developer - GitHub swift-weak-ref](https://github.com/essentialdevelopercom/swift-weak-ref)

- [Marco Santa - Swift Arrays Holding Elements With Weak References](https://marcosantadev.com/swift-arrays-holding-elements-weak-references/)