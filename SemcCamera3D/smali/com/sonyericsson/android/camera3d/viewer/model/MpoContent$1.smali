.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;
.super Ljava/lang/Object;
.source "MpoContent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadMpoImages(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V
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
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

.field final synthetic val$center:I

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->val$count:I

    iput p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->val$center:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->val$count:I

    if-ge v0, v3, :cond_2

    .line 386
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->val$center:I

    sub-int v1, v3, v0

    .line 387
    .local v1, left:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->val$center:I

    add-int v2, v3, v0

    .line 388
    .local v2, right:I
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->requestLoading(I)V

    .line 391
    :cond_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->requestLoading(I)V

    .line 385
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v1           #left:I
    .end local v2           #right:I
    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
