```
As a user,
so I can see my saved bookmarks
I would like for my all bookmarks to be displayed on the page
```
| Client | Controller | Model | View|
|--------|------------|-------|-----|
|/bookmarks -> | app.rb -> Bookmarks | |
||app.rb |<- Bookmarks||
||app.rb |->| bookmark.erb|
|/bookmark |<- app.rb | <- | bookmarks.erb|
