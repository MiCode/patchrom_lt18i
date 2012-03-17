.class abstract Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
.super Ljava/lang/Object;
.source "DeleteComfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Button"
.end annotation


# instance fields
.field public final mTextId:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V
    .locals 0
    .parameter
    .parameter "textId"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;->mTextId:I

    .line 59
    return-void
.end method
