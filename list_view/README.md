# list_view

This project shows how to use the different ListView objects.

From the [flutter docs](https://api.flutter.dev/flutter/widgets/ListView-class.html), the default constructor takes a list of Widgets as children and constructs all of the children instead of just the children that are actually visible. As a result it is appropriate for smaller sized lists.

The `ListView.builder` constructor is more appropriate when the list is very large (or infinite) as it lazily constructs objects so that they are only constructed when they are visible.

The `ListView.separated` builds child items with seperator children on demand.

![Gif of ListView](list_view.gif)
