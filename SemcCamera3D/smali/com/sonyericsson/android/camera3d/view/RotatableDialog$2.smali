.class Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayoutForButtonBgFadeOut()V
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
    .line 221
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #setter for: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$302(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;I)I

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #getter for: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$300(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->invalidate()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #calls: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->delayUpdateLayoutForButtonBgFadeOut()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$400(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$308(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)I

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #setter for: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mUpdateCount:I
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$302(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;I)I

    goto :goto_0
.end method
