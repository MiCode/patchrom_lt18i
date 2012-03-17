.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;
.source "Panorama3dStateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollingOnOutput3dState"
.end annotation


# instance fields
.field private mPause:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "mode"

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 1346
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;Z)V

    .line 1347
    return-void
.end method


# virtual methods
.method protected endScrolling()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1423
    const-string v3, "endScrolling"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->trace(Ljava/lang/String;)V

    .line 1424
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getScrollProgress()F

    move-result v2

    .line 1425
    .local v2, progress:F
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->clear()V

    .line 1426
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->getScaledImageRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 1427
    .local v1, imageRect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->getFrameRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v0, v3, v4

    .line 1428
    .local v0, distance:F
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v3

    mul-float v4, v2, v0

    const/high16 v5, 0x4000

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->moveXto(I)V

    .line 1429
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 1430
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->reset()V

    .line 1431
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 1432
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 1433
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    .line 1434
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v4, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 1435
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1385
    const-string v3, "key"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->trace(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 1387
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1388
    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->endScrolling()V

    .line 1406
    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 1386
    goto :goto_0

    .line 1393
    .restart local v0       #up:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_6

    .line 1396
    :cond_3
    if-eqz v0, :cond_0

    .line 1397
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mPause:Z

    if-nez v3, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mPause:Z

    .line 1398
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mPause:Z

    if-eqz v2, :cond_5

    .line 1399
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->pauseScrolling()V

    goto :goto_1

    .line 1401
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->resumeScrolling()V

    goto :goto_1

    :cond_6
    move v1, v2

    .line 1406
    goto :goto_1
.end method

.method public onScrollEnd(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 1438
    const-string v0, "onScrollEnd"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->trace(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->endScrolling()V

    .line 1440
    return-void
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 1
    .parameter "direction"
    .parameter "data"

    .prologue
    .line 1373
    const-string v0, "updateContent"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->trace(Ljava/lang/String;)V

    .line 1374
    iget-boolean v0, p2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsBroken:Z

    if-nez v0, :cond_0

    .line 1375
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->setSessionData(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 1376
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->updateImage()V

    .line 1377
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->resumeScrolling()V

    .line 1381
    :goto_0
    return-void

    .line 1379
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    goto :goto_0
.end method

.method protected pauseScrolling()V
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->pauseAutoScroll()V

    .line 1420
    return-void
.end method

.method protected resumeScrolling()V
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->avalableLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->avalableRight()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->startAutoScroll()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1365
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->trace(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->clear()V

    .line 1367
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setListsner(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;)V

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setKeepScreenOn(Z)V

    .line 1369
    return-void
.end method

.method public startup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1351
    const-string v0, "startup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->trace(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 1354
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->mPause:Z

    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setVisibility(I)V

    .line 1357
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->updateImage()V

    .line 1358
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->resumeScrolling()V

    .line 1359
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setListsner(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;)V

    .line 1360
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setKeepScreenOn(Z)V

    .line 1361
    return-void
.end method
