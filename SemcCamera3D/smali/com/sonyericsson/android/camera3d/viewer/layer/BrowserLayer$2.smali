.class Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;
.super Ljava/lang/Object;
.source "BrowserLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->onLoaded(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

.field final synthetic val$requestIndex:I

.field final synthetic val$requestThumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->val$requestIndex:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->val$requestThumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 549
    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->val$requestIndex:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v0, v2, v3

    .line 550
    .local v0, at:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;

    .line 554
    .local v1, view:Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;
    if-eqz v1, :cond_0

    .line 555
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->val$requestThumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->setThumbnail(Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    .line 556
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateListSelector()V
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)V

    .line 559
    .end local v1           #view:Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;
    :cond_0
    return-void
.end method
