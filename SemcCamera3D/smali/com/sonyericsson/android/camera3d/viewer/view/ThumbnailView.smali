.class public Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;
.super Landroid/widget/RelativeLayout;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailViewa"


# instance fields
.field private mData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 84
    return-void
.end method

.method public static createFactory(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;
    .locals 1
    .parameter "context"

    .prologue
    .line 166
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView$Factory;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView$Factory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getData()Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateImage()V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->getData()Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v0

    .line 148
    .local v0, data:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    .end local v1           #image:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 47
    instance-of v3, p2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 48
    check-cast v2, Landroid/widget/ImageView;

    .line 49
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 51
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const/4 v3, 0x0

    .line 59
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #view:Landroid/widget/ImageView;
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->getData()Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    move-result-object v0

    .line 109
    .local v0, data:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 112
    :cond_0
    return v1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method public resetThumbnail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->setId(I)V

    .line 140
    return-void
.end method

.method public setThumbnail(Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getRequestID()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getRequestID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->setId(I)V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->updateImage()V

    .line 129
    return-void
.end method
