# ConstraintsTranslator
translate Storyboard Constraints Xml to Visual Format Language :)

# Usage

```
./ConstraintsTranslator generate your_storyboard_path.storyboard
```

```
{
    "view": {
        "attribute": {
            "id": "m2d-tO-WM7"
        },
        "subviews": [
            {
                "view": {
                    "attribute": {
                        "id": "Nb9-oQ-WCJ"
                    },
                    "subviews": [],
                    "constraints": [
                            "COE-ui-HIh: CenterView.width == 100"                        
                            "Uvy-fQ-vpj: CenterView.height == 100"
                    ]
                }
            }
        ],
        "constraints": [
                "lsJ-1m-vgh: Nb9-oQ-WCJ.centerY == m2d-tO-WM7.centerY"            
                "nTa-fY-4GG: Nb9-oQ-WCJ.centerX == m2d-tO-WM7.centerX"
        ]
    }
}
```

# License

Apache License

