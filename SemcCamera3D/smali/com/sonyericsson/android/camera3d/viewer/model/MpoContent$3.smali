.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;
.super Ljava/lang/Object;
.source "MpoContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->onCompleteSearchRelativeMedia(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

.field final synthetic val$current:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

.field final synthetic val$relative:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$relative:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$current:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 598
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$relative:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$relative:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v1

    .line 600
    .local v1, info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-eqz v1, :cond_1

    .line 602
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$current:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    iget v3, v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    if-eq v2, v3, :cond_1

    .line 603
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$current:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget v3, v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    iput v3, v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileId:I

    .line 604
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$current:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    iput-object v3, v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileIdData:Ljava/lang/String;

    .line 610
    .end local v1           #info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;->val$relative:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->release()V

    .line 611
    return-void

    .line 598
    .restart local v1       #info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
