.class Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;
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
    name = "BackgroundListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;->this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;Lcom/sonyericsson/android/camera3d/view/TouchArea$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;-><init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;->this$0:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    #getter for: Lcom/sonyericsson/android/camera3d/view/TouchArea;->mController:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->access$400(Lcom/sonyericsson/android/camera3d/view/TouchArea;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
