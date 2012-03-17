.class Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$1;
.super Ljava/lang/Object;
.source "DeleteComfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;->onCancel(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V

    .line 154
    return-void
.end method
