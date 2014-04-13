BKCategories is a collection of categories for a quick start.

## Usage
- UIColor+Hex
- UIView+Position

### Prefix header (Appname-Prefix.pch)
```
#ifdef __OBJC__
    ...
    #import "UIView+Position.h"
    #import "UIColor+Hex.h"
	...
#endif
```

### Example
```
UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
...
view.width = 160.0;
view.left = 160.0;
...
view.backgroundColor = [UIColor colorWithHexString:@"cccccc"];
```