.class public Lmiui/app/screenelement/WallpaperScreenElement;
.super Lmiui/app/screenelement/ImageScreenElement;
.source "WallpaperScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Wallpaper"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 16
    iget-object v1, p0, Lmiui/app/screenelement/WallpaperScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 18
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/app/screenelement/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
