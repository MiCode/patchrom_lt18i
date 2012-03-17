.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;
.super Ljava/lang/Object;
.source "MpoImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->startLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

.field final synthetic val$holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->val$holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    iput p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->val$holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->val$index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->loadImage(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 105
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->val$holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->store(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 108
    .local v1, success:Z
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
