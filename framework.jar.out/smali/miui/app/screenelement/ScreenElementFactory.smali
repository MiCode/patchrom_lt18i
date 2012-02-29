.class public Lmiui/app/screenelement/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v1, Lmiui/app/screenelement/ImageScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 29
    :goto_0
    return-object v1

    .line 12
    :cond_0
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Lmiui/app/screenelement/TimepanelScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 14
    :cond_1
    const-string v1, "ImageNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Lmiui/app/screenelement/ImageNumberScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 16
    :cond_2
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Lmiui/app/screenelement/TextScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 18
    :cond_3
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    new-instance v1, Lmiui/app/screenelement/DateTimeScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 20
    :cond_4
    const-string v1, "Wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    new-instance v1, Lmiui/app/screenelement/WallpaperScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/WallpaperScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 22
    :cond_5
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    new-instance v1, Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 24
    :cond_6
    const-string v1, "MusicControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    new-instance v1, Lmiui/app/screenelement/MusicControlScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 26
    :cond_7
    const-string v1, "ElementGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    new-instance v1, Lmiui/app/screenelement/ElementGroup;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    goto :goto_0

    .line 29
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method
