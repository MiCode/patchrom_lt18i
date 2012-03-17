.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;
.source "Panorama3dStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManualScrollingState"
.end annotation


# instance fields
.field private mFirst:Z

.field private mMoved:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 1091
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 1092
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1122
    const-string v3, "key"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->trace(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 1124
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1125
    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->endScrolling()V

    .line 1139
    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 1123
    goto :goto_0

    .line 1130
    .restart local v0       #up:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_4

    .line 1133
    :cond_3
    if-eqz v0, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1139
    goto :goto_1
.end method

.method public onMove(II)V
    .locals 1
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1166
    const-string v0, "move"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->trace(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->scroll(I)V

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mMoved:Z

    .line 1169
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1144
    const-string v1, "touch"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->trace(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mDragDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$700(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1149
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1150
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mMoved:Z

    .line 1161
    :cond_0
    :goto_0
    return v0

    .line 1152
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1153
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mFirst:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mMoved:Z

    if-eqz v1, :cond_3

    .line 1154
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 1159
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mFirst:Z

    goto :goto_0

    .line 1156
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mFirst:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mMoved:Z

    if-nez v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    goto :goto_1
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 1
    .parameter "direction"
    .parameter "data"

    .prologue
    .line 1111
    const-string v0, "updateContent"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->trace(Ljava/lang/String;)V

    .line 1112
    iget-boolean v0, p2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsBroken:Z

    if-nez v0, :cond_0

    .line 1113
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->setSessionData(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 1114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->updateImage()V

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1105
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->trace(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setListsner(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;)V

    .line 1107
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 1096
    const-string v0, "startup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->trace(Ljava/lang/String;)V

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mFirst:Z

    .line 1098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->mMoved:Z

    .line 1099
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->pauseScrolling()V

    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setListsner(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;)V

    .line 1101
    return-void
.end method
