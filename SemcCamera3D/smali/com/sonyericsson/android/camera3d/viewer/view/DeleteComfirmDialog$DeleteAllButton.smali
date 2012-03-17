.class Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;
.super Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
.source "DeleteComfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V
    .locals 0
    .parameter
    .parameter "textId"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V

    .line 78
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;->onDelAll(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V

    .line 83
    return-void
.end method
