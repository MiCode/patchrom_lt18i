.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;
.super Ljava/lang/Object;
.source "MultiAngleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V
    .locals 0
    .parameter "direction"
    .parameter "completed"
    .parameter "broken"

    .prologue
    .line 192
    return-void
.end method

.method public performBack()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public performDelete()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public performNext()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public performPrevious()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public performShare()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public startup()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
