.class Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;
.super Ljava/lang/Object;
.source "TouchArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/TouchArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchAreaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;->this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;Lcom/sonyericsson/android/camera3d/view/TouchArea$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;-><init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;)V

    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "motion"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 135
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 136
    .local v2, y:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v0, absoluteRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;->this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    #getter for: Lcom/sonyericsson/android/camera3d/view/TouchArea;->mTouchArea:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->access$300(Lcom/sonyericsson/android/camera3d/view/TouchArea;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 106
    const-string v0, "VIEW_FINDER"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;->this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    #getter for: Lcom/sonyericsson/android/camera3d/view/TouchArea;->mCurrentTouchCaptureSetting:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->access$200(Lcom/sonyericsson/android/camera3d/view/TouchArea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;->this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->doTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
