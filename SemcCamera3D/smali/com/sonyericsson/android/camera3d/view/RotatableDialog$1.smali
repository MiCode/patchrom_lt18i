.class Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #getter for: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mDisplayHeight:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$000(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #calls: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->updateViewLayout()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$100(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #calls: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayout()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$200(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    .line 211
    :cond_0
    return-void
.end method
