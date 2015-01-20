BKCategories is a collection of categories for a quick start.

## Usage
- UIColor+Helpers
- UIView+Position

### Prefix header (Prefix.pch)
```
#ifdef __OBJC__
    ...
    #import "UIView+Position.h"
    #import "UIColor+Helpers.h"
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
