.class Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;
.super Ljava/lang/Object;
.source "CapturingModeSelectorDialogView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    if-nez v4, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 239
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v1, v4, v5

    .line 240
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v2, v4, v5

    .line 243
    .local v2, y:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    #calls: Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->isInDialog(II)Z
    invoke-static {v4, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->access$200(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 258
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    #calls: Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->access$300(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    move-result-object v0

    .line 252
    .local v0, listview:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    if-eqz v0, :cond_2

    .line 254
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
