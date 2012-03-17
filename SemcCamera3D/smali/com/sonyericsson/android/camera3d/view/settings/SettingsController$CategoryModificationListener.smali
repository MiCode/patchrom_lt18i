.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryModificationListener"
.end annotation


# instance fields
.field mOriginalOrder:I

.field mPreviousOrder:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1159
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized finish(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "motion"

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1219
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertPositionToDisplayedOrder(Landroid/view/MotionEvent;)I
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)I

    move-result v1

    .line 1220
    .local v1, positionOder:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertDisplayedOrderToIndex(I)I
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2000(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)I

    move-result v0

    .line 1221
    .local v0, itemOder:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mOriginalOrder:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mPreviousOrder:I

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->changeOrder(III)Z
    invoke-static {v2, v3, v4, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2100(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;III)Z

    .line 1222
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->dropButton(Landroid/view/MotionEvent;)V
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)V

    .line 1223
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2200(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    .end local v0           #itemOder:I
    .end local v1           #positionOder:I
    :cond_0
    monitor-exit p0

    return-void

    .line 1218
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v8, 0x1

    .line 1170
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1212
    :goto_0
    monitor-exit p0

    return v8

    .line 1173
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1211
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2600(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/view/GestureDetector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1170
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1175
    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1176
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 1177
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mOriginalOrder:I

    .line 1178
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mOriginalOrder:I

    iput v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mPreviousOrder:I

    goto :goto_1

    .line 1183
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1184
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->dragButton(Landroid/view/MotionEvent;)V
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1800(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)V

    .line 1185
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertPositionToDisplayedOrder(Landroid/view/MotionEvent;)I
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)I

    move-result v1

    .line 1186
    .local v1, positionOder:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertDisplayedOrderToIndex(I)I
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2000(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)I

    move-result v0

    .line 1187
    .local v0, itemOder:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mPreviousOrder:I

    if-eq v3, v0, :cond_1

    .line 1188
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mOriginalOrder:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mPreviousOrder:I

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->changeOrder(III)Z
    invoke-static {v3, v4, v5, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2100(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1190
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2200(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 1191
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideButton(I)V
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)V

    .line 1192
    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mPreviousOrder:I

    goto :goto_1

    .line 1194
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2200(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2200(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v5

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1197
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mOriginalOrder:I

    iput v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mPreviousOrder:I

    .line 1198
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2200(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 1199
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->mOriginalOrder:I

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertIndexToDisplayedOrder(I)I
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)I

    move-result v1

    .line 1200
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideButton(I)V
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$2300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)V

    goto/16 :goto_1

    .line 1208
    .end local v0           #itemOder:I
    .end local v1           #positionOder:I
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->finish(Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
