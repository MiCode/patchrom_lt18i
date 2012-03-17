.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;
.super Ljava/lang/Object;
.source "Panorama3dStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    .line 292
    return-void
.end method


# virtual methods
.method avalableLeft()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mAvalableLeft:Z

    return v0
.end method

.method avalableRight()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mAvalableRight:Z

    return v0
.end method

.method public getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method isBroken()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsBroken:Z

    return v0
.end method

.method isScrollable()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsScrollable:Z

    return v0
.end method

.method public onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 341
    return-void
.end method

.method public onCloseDialog()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onEndZoomMode()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 356
    return-void
.end method

.method public onSingleTapUp()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public onStartZoomMode()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 0
    .parameter "direction"
    .parameter "data"

    .prologue
    .line 333
    return-void
.end method

.method public onZoom(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 354
    return-void
.end method

.method public onZoom(FII)V
    .locals 0
    .parameter "ratio"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 352
    return-void
.end method

.method public performDelete()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public performNext()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public performPrevious()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public performScroll()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public performShare()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public setSessionData(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    .line 300
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public startup()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", imageL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mAvalableLeft:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", imageR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mAvalableRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsScrollable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", broken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->mData:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsBroken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 0
    .parameter "eventName"

    .prologue
    .line 373
    return-void
.end method
