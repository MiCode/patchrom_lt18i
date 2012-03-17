.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;
.super Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
.source "MpoImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoImageHolder"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;)V

    return-void
.end method


# virtual methods
.method public onRestore(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "dest"

    .prologue
    .line 65
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->mIndex:I

    if-gez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;)Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->restore(ILandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStore(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "dest"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;)Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->store(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->mIndex:I

    .line 75
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache$MpoImageHolder;->mIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
