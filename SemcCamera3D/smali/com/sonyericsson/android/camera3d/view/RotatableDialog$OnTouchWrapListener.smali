.class Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchWrapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;-><init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 446
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->invalidate()V

    goto :goto_0

    .line 449
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnTouchWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #calls: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayoutForButtonBgFadeOut()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$400(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
